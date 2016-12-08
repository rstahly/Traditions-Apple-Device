//
//  HelpViewController.swift
//  TestApp3
//
//  Created by Rachel Feddersen on 11/21/16.
//  Copyright © 2016 Rachel M Feddersen. All rights reserved.
//

import UIKit

class HelpViewController: UIViewController {
    @IBAction func doneButton(sender: UIButton) {
        //self.view.removeFromSuperview()
        self.dismissViewControllerAnimated(false, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.preferredContentSize = CGSizeMake(203, 288)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
