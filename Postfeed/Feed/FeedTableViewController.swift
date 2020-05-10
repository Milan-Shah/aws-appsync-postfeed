//
//  ViewController.swift
//  Postfeed
//
//  Created by Milan Shah on 5/10/20.
//  Copyright © 2020 Milan Shah. All rights reserved.
//

import UIKit
import CoreLocation

class Post {
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

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.loadSettings()
        self.theSettings.delegate = self
    }
    
    // MARK: - Post Thought Post
    func postThought(post: Post) {
        posts.append(post)
        tableView.reloadData()
    }

    // MARK: - Fetch Thought Posts
    func fetchPosts() {
        
        // TODO: fetch posts
        
        let post = Post()
        post.createdAt = Date().timeIntervalSince1970
        post.lat = (theSettings.includeLocation) ? 33.0 : 0.0
        post.lng = (theSettings.includeLocation) ? -97.0 : 0.0
        post.thought = "Here's a thought..."
        post.userName = "brainofbear"
        
        posts.append(post)
        tableView.reloadData()
        self.refreshControl?.endRefreshing()
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
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }
    }

    // MARK: - Settings
    func saveSettings(settings: Settings) {
        UserDefaults.standard.set(settings.bio, forKey: SettingsKeys.bio.rawValue)
        UserDefaults.standard.set(settings.includeLocation, forKey: SettingsKeys.includeLocation.rawValue)
        UserDefaults.standard.set(settings.dateFormat.rawValue, forKey: SettingsKeys.dateFormat.rawValue)
    }
    
    func loadSettings() {
        theSettings.bio = UserDefaults.standard.string(forKey: SettingsKeys.bio.rawValue) ?? ""
        theSettings.includeLocation = UserDefaults.standard.bool(forKey: SettingsKeys.includeLocation.rawValue)
        theSettings.dateFormat = PostDateFormatStyle.init(rawValue: UserDefaults.standard.integer(forKey: SettingsKeys.dateFormat.rawValue)) ?? .medium
        
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
    

}
