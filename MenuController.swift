//
//  MenuController.swift
//  TestApp3
//
//  Created by Rachel Feddersen on 11/5/16.
//  Copyright © 2016 Rachel M Feddersen. All rights reserved.
//

import UIKit

class MenuController: UITableViewController, UIPopoverPresentationControllerDelegate {
    @IBOutlet weak var unkAlumniNavBar: UITableViewCell!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - UITextFieldDelegate Methods
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 8
    }
    
    // MARK: - UITableViewDelegate Methods
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        // If the row is the UNK Alumni navigation item
        if indexPath.row == 5 {
            UIApplication.sharedApplication().openURL(NSURL(string: "https://unkalumni.org")!)
        } else if indexPath.row == 7 {
            self.performSegueWithIdentifier("showHelp", sender: self)
        }
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showHelp" {
            let vc = segue.destinationViewController as! HelpViewController
            
            let controller = vc.popoverPresentationController
            
            if controller != nil {
                controller?.delegate = self
            }
        }
    }
    
    func adaptivePresentationStyleForPresentationController(controller: UIPresentationController) -> UIModalPresentationStyle {
        return .None
    }
}
