//
//  ViewController.swift
//  Postfeed
//
//  Created by Milan Shah on 5/10/20.
//  Copyright © 2020 Milan Shah. All rights reserved.
//

import UIKit
import CoreLocation
import AWSMobileClient
import AWSAppSync

class Post {
    var id = ""
    var userId = ""
    var userName = ""
    var thought = ""
    var lat = 0.0
    var lng = 0.0
    var createdAt = Date().timeIntervalSince1970
}

protocol MapDisplayer {
    func showMap(forPost post : Post)
}

class PostCell : UITableViewCell {
    
    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var thoughtLabel: UILabel!
    @IBOutlet weak var mapButton: UIButton!
    
    var delegate : MapDisplayer!
    var thePost : Post!
    
    func configCell(post : Post, del : MapDisplayer, dFormatter : DateFormatForSettings) {
        thePost = post
        delegate = del
        
        usernameLabel.text = thePost.userName
        dateLabel.text = dFormatter.formatDate(date: Date.init(timeIntervalSince1970: thePost.createdAt))
        thoughtLabel.text = thePost.thought
        mapButton.isEnabled = thePost.lat != 0.0
    }
    
    @IBAction func showMap(_ sender: Any) {
        delegate?.showMap(forPost: thePost)
    }
}

class FeedTableViewController: UITableViewController, SettingsSaver, CLLocationManagerDelegate, MapDisplayer, ThoughtPoster {
    
    var theSettings = Settings()
    var prevDateFormat = PostDateFormatStyle.medium
    var locMgr : CLLocationManager?
    var userLocation : CLLocation?
    var locationTimer : Timer?
    
    var posts = [Post]()
    var mapPost : Post?
    
    var appSyncClient: AWSAppSyncClient?
    var onCreateWatcher: AWSAppSyncSubscriptionWatcher<OnCreateFeedPostSubscription>?
    var onUpdateWatcher: AWSAppSyncSubscriptionWatcher<OnUpdateFeedPostSubscription>?
    var onDeleteWatcher: AWSAppSyncSubscriptionWatcher<OnDeleteFeedPostSubscription>?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        appSyncClient = (UIApplication.shared.delegate as! AppDelegate).appSyncClient
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.loadSettings()
        self.theSettings.delegate = self
        
        checkSignIn()
    }
    
    func checkSignIn() {
        
        if AWSMobileClient.default().isSignedIn {
            
            // Fetch Posts
            fetchPosts()
            startSubscriptionForOnCreateWatcher()
            
        } else {
            
            guard let navigationController = self.navigationController else { return }
            AWSMobileClient.default().showSignIn(navigationController: navigationController) { (userState, error) in
                
                guard error == nil else {
                    print("AWSMobileClient ShowSign In Error")
                    return
                }
                
                guard let state = userState else { return }
                print("\(state.rawValue)")
                self.fetchPosts()
                self.startSubscriptionForOnCreateWatcher()
            }
        }
    }
    
    // MARK: - Post Thought Post
    func postThought(post: Post) {
        
        if post.id.isEmpty {
            
            // Create
            let userId = AWSMobileClient.default().identityId ?? ""
            let userName = AWSMobileClient.default().username ?? ""
            
            post.id = UUID().uuidString
            post.userId = userId
            let input = CreateFeedPostInput(id: post.id, userId: userId, userName: userName, thought: post.thought, lat: post.lat, lng: post.lng, createdAt: Date().timeIntervalSince1970)
            let mut = CreateFeedPostMutation(input: input)
            appSyncClient?.perform(mutation: mut) { (result, error) in
                guard error == nil else { return }
                self.posts.append(post)
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }
            }
            
        } else {
            
            // Update
            let userId = AWSMobileClient.default().identityId ?? ""
            let userName = AWSMobileClient.default().username ?? ""
            let input = UpdateFeedPostInput(id: post.id, userId: userId, userName: userName, thought: post.thought, lat: post.lat, lng: post.lng, createdAt: Date().timeIntervalSince1970)
            let mut = UpdateFeedPostMutation(input: input)
            appSyncClient?.perform(mutation: mut) { (result, error) in
                guard error == nil else { return }
                self.posts.append(post)
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }
            }
        }
        
    }

    // MARK: - Fetch Thought Posts
    func fetchPosts() {
        
        guard AWSMobileClient.default().isSignedIn else { return }
        
        let q = ListFeedPostsQuery()
        appSyncClient?.fetch(query: q, cachePolicy: .returnCacheDataAndFetch) { (result, error) in
            
            guard error == nil else { return }
            guard let postFromServer = result?.data?.listFeedPosts?.items else { return }
            guard postFromServer.count > 0 else { return }
            self.posts.removeAll()
            
            // TODO: convert into Codable protocol for JSONDecoding ;)
            postFromServer.forEach { (item) in
                let newPost = Post()
                newPost.createdAt = item?.createdAt ?? 0.0
                newPost.id = item?.id ?? ""
                newPost.lat = item?.lat ?? 0.0
                newPost.lng = item?.lng ?? 0.0
                newPost.thought = item?.thought ?? ""
                newPost.userId = item?.userId ?? ""
                newPost.userName = item?.userName ?? ""
                self.posts.append(newPost)
            }
            
            DispatchQueue.main.async {
                if self.posts.count > 0 {
                    self.tableView.reloadData()
                }
            }
        }
    }
    
    // MARK: - Table view data source

    @IBAction func doRefreshTV(_ sender: UIRefreshControl) {
        posts.removeAll()
        fetchPosts()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return posts.count
    }
    
     override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "postcell", for: indexPath) as! PostCell
        cell.configCell(post: posts[indexPath.row], del: self, dFormatter: theSettings)
        return cell
     }
    
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            deletePost(at: indexPath.row)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }
    }
    
    func deletePost(at index: Int) {
        
        let post = posts[index]
        guard post.userId == AWSMobileClient.default().identityId else { return }
        posts.remove(at: index)
        self.tableView.deleteRows(at: [IndexPath(row: index, section: 0)], with: .automatic)
        
        let input = DeleteFeedPostInput(id: post.id, userId: post.userId)
        let mut = DeleteFeedPostMutation(input: input)
        appSyncClient?.perform(mutation: mut) { (result, error) in
            guard error != nil else { return }
            print(result)
        }
        
    }

    // MARK: - Settings
    func saveSettings(settings: Settings) {
        
        if settings.id == "" {
            
            // Store
            let input = CreateSettingsInput(id: UUID().uuidString, userId: AWSMobileClient.default().identityId ?? "", bio: settings.bio, incLocation: settings.includeLocation, dateFmt: settings.dateFormat.rawValue)
            let mutation = CreateSettingsMutation(input: input)
            appSyncClient?.perform(mutation: mutation) { (result, error) in
                guard error == nil else { return }
                print(result ?? "Result came in empty!")
            }
            
        } else {
            
            // Update
            let input = UpdateSettingsInput(id: UUID().uuidString, bio: settings.bio, incLocation: settings.includeLocation, dateFmt: settings.dateFormat.rawValue)
            let mutation = UpdateSettingsMutation(input: input)
            appSyncClient?.perform(mutation: mutation) { (result, error) in
                guard error == nil else { return }
                print(result ?? "Result came in empty!")
            }
        }
        
    }
    
    func loadSettings() {

        guard let userId = AWSMobileClient.default().identityId else { return }
        let q = ListSettingssQuery()
        let userIdFilterInput = ModelStringInput(eq: userId)
        let userIDFilter = ModelSettingsFilterInput(userId: userIdFilterInput)
        q.filter = userIDFilter
        
        appSyncClient?.fetch(query: q, cachePolicy: .fetchIgnoringCacheData) { (result, error) in
            
            guard error == nil else { return }
            guard let items = result?.data?.listSettingss?.items, items.count > 0 else { return }
            guard let settingsFromServer = items[0] else { return }
            
            self.theSettings.id = settingsFromServer.id
            self.theSettings.bio = settingsFromServer.bio
            self.theSettings.includeLocation = settingsFromServer.incLocation
            self.theSettings.dateFormat = PostDateFormatStyle(rawValue: settingsFromServer.dateFmt) ?? PostDateFormatStyle.short
            
            if CLLocationManager.locationServicesEnabled() {
                if self.theSettings.includeLocation == true {
                    self.locMgr = CLLocationManager()
                    self.locMgr?.delegate = self
                    self.locMgr?.requestWhenInUseAuthorization()
                    self.locMgr?.startUpdatingLocation()
                }
                else {
                    self.locMgr?.stopUpdatingLocation() // if off
                    self.locationTimer?.invalidate()
                }
            }
            
        }
        
        // not the first time
        if self.prevDateFormat != self.theSettings.dateFormat {
            self.tableView.reloadData()
        }
    }
    
    // MARK: - Navigation

    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if identifier == "segSettings" {
            return true // checkfor is logged in when authentication added
        }
        return true
    }
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segSettings" {
            if let vc = segue.destination as? SettingsViewController {
                prevDateFormat = theSettings.dateFormat
                vc.theSettings = self.theSettings
            }
        }
        else if segue.identifier == "segMap" {
            if let vc = segue.destination as? MapViewController {
                vc.thePost = mapPost
            }
        }
        else if segue.identifier == "segAdd" {
            if let vc = segue.destination as? PostViewController {
                vc.delegate = self
            }
        }
        else if segue.identifier == "segEdit" {
            if let vc = segue.destination as? PostViewController {
                vc.post = posts[(tableView.indexPathForSelectedRow?.row)!]
                vc.delegate = self
            }
        }
    }
    
    @IBAction func unwindToThoughts(segue : UIStoryboardSegue) {
        if segue.identifier == "segSettingsDone" {
            loadSettings() // reload settings
        }
        
        // clear out the map post
        mapPost = nil
    }
    
    // MARK: - CoreLoc
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        if status == .authorizedWhenInUse {
            locMgr?.desiredAccuracy = 100
            locMgr?.distanceFilter = 1
            locMgr?.startUpdatingLocation()
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let recent = locations.last else { return }
        userLocation = recent
        locMgr?.stopUpdatingLocation()
        
        print ("\(String(describing: userLocation?.coordinate))")
    
        // get the user location every 10 mins
        locationTimer = Timer.init(timeInterval: 600.0, repeats: false) { (timer) in
            self.locMgr?.startUpdatingLocation()
        }
    }

    // MARK: - Map
    func showMap(forPost post: Post) {
        mapPost = post
        self.performSegue(withIdentifier: "segMap", sender: self)
    }
    
    // MARK: - Subscription Watcher
    func startSubscriptionForOnCreateWatcher() {
        guard onCreateWatcher == nil else { return }
        
        // Subscribe to update and delete watcher as well
        startSubscriptionForOnUpdateWatcher()
        startSubscriptionForOnDeleteWatcher()
        
        do {
            
            onCreateWatcher = try appSyncClient?.subscribe(subscription: OnCreateFeedPostSubscription(), resultHandler: { (result, trans, error) in
                
                guard error == nil else { return }
                guard let result = result else { return }
                guard let newPost = result.data?.onCreateFeedPost else { return }
                let postToAdd = ListFeedPostsQuery.Data.ListFeedPost.Item(id: newPost.id, userId: newPost.userId, userName: newPost.userName, thought: newPost.thought, lat: newPost.lat, lng: newPost.lng, createdAt: newPost.createdAt)
                
                do {
                    try trans?.update(query: ListFeedPostsQuery(), { (data: inout ListFeedPostsQuery.Data) in
                        
                        data.listFeedPosts?.items?.append(postToAdd)
                        DispatchQueue.main.async {
                            self.fetchPosts()
                        }
                    })
                    
                } catch {
                    print(error.localizedDescription)
                }
                
            })
            
        } catch {
            print(error.localizedDescription)
        }
    }
    
    func startSubscriptionForOnUpdateWatcher() {
        guard onUpdateWatcher == nil else { return }
        
        do {
            
            onUpdateWatcher = try appSyncClient?.subscribe(subscription: OnUpdateFeedPostSubscription(), resultHandler: { (result, trans, error) in
                
                guard error == nil else { return }
                DispatchQueue.main.async {
                    self.fetchPosts()
                }
            })
            
        } catch {
            print(error.localizedDescription)
        }
    }
    
    func startSubscriptionForOnDeleteWatcher() {
        guard onDeleteWatcher == nil else { return }
        
        do {
            
            onDeleteWatcher = try appSyncClient?.subscribe(subscription: OnDeleteFeedPostSubscription(), resultHandler: { (result, trans, error) in
                
                guard error == nil else { return }
                DispatchQueue.main.async {
                    self.fetchPosts()
                }
            })
            
        } catch {
            print(error.localizedDescription)
        }
    }
}
