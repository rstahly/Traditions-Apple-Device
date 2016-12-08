//
//  LoginController.swift
//  TestApp3
//
//  Created by Rachel Feddersen on 11/7/16.
//  Copyright © 2016 Rachel M Feddersen. All rights reserved.
//

import UIKit

class LoginController: UIViewController {
    // Button for navigation bar
    @IBOutlet weak var menuButton: UIBarButtonItem!

    // Fields for user login
    @IBOutlet weak var emailAddress: UITextField!
    
    // Hide keyboard when register button clicked
    @IBAction func loginButton(sender: AnyObject) {
        self.emailAddress.resignFirstResponder()
    }
    
    @IBAction func registerFromLogin(sender: AnyObject) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if self.revealViewController() != nil {
            menuButton.target = self.revealViewController()
            menuButton.action = "revealToggle:"
            self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }

}
