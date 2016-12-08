//
//  RegisterLoginController.swift
//  TestApp3
//
//  Created by Rachel M Feddersen on 10/29/16.
//  Copyright © 2016 Rachel M Feddersen. All rights reserved.
//

import UIKit

class RegisterController: UIViewController {
    // Button for navigation bar
    @IBOutlet weak var menuButton: UIBarButtonItem!
    
    // Fields for user registration
    @IBOutlet weak var firstNameField: UITextField!
    @IBOutlet weak var lastNameField: UITextField!
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var gradYearField: UITextField!
    
    // Hide keyboard when register button clicked
    @IBAction func registerButton(sender: UIButton) {
        self.firstNameField.resignFirstResponder()
        self.lastNameField.resignFirstResponder()
        self.emailField.resignFirstResponder()
        self.gradYearField.resignFirstResponder()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if self.revealViewController() != nil {
            menuButton.target = self.revealViewController()
            menuButton.action = "revealToggle:"
            self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        }
    }
    
    @IBAction func loginFromRegister(sender: UIButton) {
    }
    
    @IBAction func gradMonthField(sender: UIButton) {
        var buttonMonthName = ""
        
        let monthController = UIAlertController(title: "Estimated Graduation Month", message: "Select Graduation Month", preferredStyle: UIAlertControllerStyle.Alert)
        
        let decemberAction = UIAlertAction(title: "December", style: UIAlertActionStyle.Default, handler:  {(alert: UIAlertAction!) in
            // Set the button Month Name
            buttonMonthName = "December"
            
            sender.setTitle(buttonMonthName, forState: .Normal)
        })
        
        let mayAction = UIAlertAction(title: "May", style: UIAlertActionStyle.Default, handler: {(alert: UIAlertAction!) in
            // Set the button Month Name
            buttonMonthName = "May"
            
            sender.setTitle(buttonMonthName, forState: .Normal)
        })
        
        let julyAction = UIAlertAction(title: "July", style: UIAlertActionStyle.Default, handler: {(alert: UIAlertAction!) in
            // Set the button Month Name
            buttonMonthName = "July"
            
            sender.setTitle(buttonMonthName, forState: .Normal)
        })
        
        // Add the actions to the alert
        monthController.addAction(decemberAction)
        monthController.addAction(mayAction)
        monthController.addAction(julyAction)
        
        presentViewController(monthController, animated: true, completion: nil)
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
