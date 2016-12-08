//
//  TraditionListViewController.swift
//  TestApp3
//
//  Created by Rachel Feddersen on 11/14/16.
//  Copyright © 2016 Rachel M Feddersen. All rights reserved.
//

import UIKit

class TraditionListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var menuButton: UIBarButtonItem!
    @IBOutlet weak var tableView: UITableView!
    let traditionTitles = ["Go to Daylight Donuts at 1 A.M.", "Visit UNK's Planetarium.", "Cheer on the Loper's at a football game.", "Participate in Lip Sync for Homecoming.", "Build a snowman on campus.", "Attend a choir concert.", "Attend a show in the Miriam Drake Theatre.", "Go to the Blue and Gold Showcase.", "Attend an event downtown at the World Theatre."]
    let traditionThumbnails: [UIImage] = [UIImage(named: "tradition_thumb_1")!, UIImage(named: "tradition_thumb_2")!, UIImage(named: "tradition_thumb_3")!, UIImage(named: "tradition_thumb_4")!, UIImage(named: "tradition_thumb_5")!, UIImage(named: "tradition_thumb_6")!, UIImage(named: "tradition_thumb_7")!, UIImage(named: "tradition_thumb_8")!, UIImage(named: "tradition_thumb_9")!]
    let textCellIdentifier = "TextCell"
    let tableRowSegue = "tableRowSegue"

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if self.revealViewController() != nil {
            menuButton.target = self.revealViewController()
            menuButton.action = "revealToggle:"
            self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        }

        tableView.delegate = self
        tableView.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return traditionTitles.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(textCellIdentifier, forIndexPath: indexPath)
        
        self.tableView.rowHeight = 90
        let row = indexPath.row
        cell.textLabel?.text = traditionTitles[row]
        cell.imageView?.image = traditionThumbnails[row]
        
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
        
        let row = indexPath.row
        print(traditionTitles[row])
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == tableRowSegue, let destination = segue.destinationViewController as? TraditionDetailViewController, traditionIndex = tableView.indexPathForSelectedRow?.row {
            destination.rowID = traditionIndex
        }
    }

}
