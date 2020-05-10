//
//  PostViewController.swift
//  Postfeed
//
//  Created by Milan Shah on 5/10/20.
//  Copyright © 2020 Milan Shah. All rights reserved.
//

import UIKit

protocol ThoughtPoster {
    func postThought(post : Post)
}

class PostViewController: UIViewController {

    @IBOutlet weak var textview: UITextView!

    var post : Post?
    var delegate : ThoughtPoster?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // if we have a Post we're viewing so remove the Post button
        if post != nil {
            self.navigationItem.rightBarButtonItem = nil
            textview.text = post?.thought
        }
    }
    
    @IBAction func postClicked(_ sender: Any) {
        
        guard textview.text.count > 0 else { return }
        
        if post == nil {
            post = Post()
        }
        
        post?.thought = textview.text
        guard let post = post else { return }
        delegate?.postThought(post: post)
        self.performSegue(withIdentifier: "segPostDone", sender: self)
    }
}
