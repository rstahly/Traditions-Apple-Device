//
//  ViewController.swift
//  TestApp3
//
//  Created by Rachel M Feddersen on 10/28/16.
//  Copyright © 2016 Rachel M Feddersen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // Button for navigation bar
    @IBOutlet weak var menuButton: UIBarButtonItem!
    
    // Button for going to the UNK Alumni Website
    @IBAction func unkAlumniInfo(sender: UIButton) {
        UIApplication.sharedApplication().openURL(NSURL(string: "https://unkalumni.org")!)
    }
    
    @IBAction func welcomeButton(sender: UIButton) {
    }

    @IBAction func registerLoginButton(sender: UIButton) {
    }
    
    @IBAction func traditionListButton(sender: UIButton) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.revealViewController().rearViewRevealWidth = 200
        
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
    
//    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
//        if segue.identifier == "traditionListSegue" {
//            let traditionListTableViewController = segue.destinationViewController as! TraditionListTableViewController
//            traditionListTableViewController.traditions = self.traditions
//        }
//    }
}

