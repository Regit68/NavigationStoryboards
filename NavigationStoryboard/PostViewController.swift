//
//  PostViewController.swift
//  NavigationStoryboard
//
//  Created by Irina on 15.12.2021.
//

import UIKit

class PostViewController: UIViewController {
    
    var post: Post?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let post = post {
            navigationItem.title = post.title
        }
    }
    
}


