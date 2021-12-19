//
//  InfoViewController.swift
//  NavigationStoryboard
//
//  Created by Irina on 15.12.2021.
//

import UIKit

class InfoViewController: UIViewController {
    
    @IBOutlet var hiLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func ButtonShowInfo(_ sender: Any) {
        self.alert(title: "User", message: "Please, enter your name!", style: .alert)
        self.hiLabel.text = "Hi, "
    }
    
    func alert(title: String, message: String, style: UIAlertController.Style) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: style)
        let action = UIAlertAction(title: "OK", style: .default) { action in
            if let textField = alertController.textFields?.first,
                let text = textField.text,
                   let hiLabelText = self.hiLabel.text {
                    self.hiLabel.text = hiLabelText + text + "!"
                
            }
        }
        
        alertController.addAction(action)
        self.present(alertController, animated: true, completion: nil)
        alertController.addTextField(configurationHandler: nil)
    }
    
}
