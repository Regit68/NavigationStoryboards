//
//  FeedViewController.swift
//  NavigationStoryboard
//
//  Created by Irina on 15.12.2021.
//

import UIKit

class FeedViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "post" else {
            return
        }
        guard let viewController = segue.destination as? PostViewController else {
            return
        }
        
        viewController.post = Post(title: "New Post")
    }
    
}


