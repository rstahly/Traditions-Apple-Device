//
//  WelcomeViewController.swift
//  TestApp3
//
//  Created by Rachel Feddersen on 11/5/16.
//  Copyright © 2016 Rachel M Feddersen. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {
    // Button for navigation bar
    @IBOutlet weak var menuButton: UIBarButtonItem!
    @IBOutlet weak var welcomeLetter: UILabel!
    
    let letter =
        "This will be a letter from someone or other, but until then, here are a few words from me. Please enjoy the app and have fun completing the traditions. And until we get a letter, here is a picture of me as a pirate.\n\nGood luck, and Go Lopers!"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if self.revealViewController() != nil {
            menuButton.target = self.revealViewController()
            menuButton.action = "revealToggle:"
            self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        }
        
        // Set the text of the letter
        welcomeLetter.text = letter
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
