//
//  TraditionDetailViewController.swift
//  TestApp3
//
//  Created by Rachel Feddersen on 11/14/16.
//  Copyright © 2016 Rachel M Feddersen. All rights reserved.
//

import UIKit

class TraditionDetailViewController: UIViewController {
    @IBOutlet weak var traditionDetailImage: UIImageView!
    @IBOutlet weak var traditionDetailTitle: UILabel!
    @IBOutlet weak var traditionSummary: UILabel!
    @IBOutlet weak var traditionInstruction: UILabel!
    @IBAction func traditionCompleteButton(sender: UIButton) {
    }
    
    var rowID: Int!
    let traditionTitles = ["Go to Daylight Donuts at 1 A.M.", "Visit UNK's Planetarium.", "Cheer on the Loper's at a football game.", "Participate in Lip Sync for Homecoming.", "Build a snowman on campus.", "Attend a choir concert.", "Attend a show in the Miriam Drake Theatre.", "Go to the Blue and Gold Showcase.", "Attend an event downtown at the World Theatre."]
    let traditionSummaries = [
        "Daylight Donuts has been downtown for many years. It is a great place that many students have eaten at over the years. And it opens late at night which is fantastic also.",
        "UNK's 60 seat public science theater was built in 2008 and is the newest and largest star theater in Nebraska.",
        "Show your Loper pride by cheering on the Lopers at their next football game.",
        "Lip Sync is a tradition that has been a part of Homecoming for a long time. It is a fun way to get into the Homecoming spirit and help your group win the Homecoming competition.",
        "It is always fun to have snow days, and although it is nice and warm inside, that does not mean fun cannot be had outside.",
        "UNK has quite a few choirs and they perform multiple times a year. So go support your fellow Lopers in the Fine Arts and listen to some beautiful music.",
        "UNK also puts on many theatre productions throughout the year and they are always wonderful to watch. Most shows are free or only a few dollars, so get your tickets while they are still available.",
        "Every year, on move in day in the fall, UNK holds the Blue and Gold Showcase. It is an event where organizations on campus and in the community set up booths and show students how to get involved.",
        "The World Theatre is a nonprofit, volunteer-run theatre in downtown Kearney that was built in 1927. It was closed for several years before being reopened in 2012 after being renovated."]
    let traditionInstructions = [
        "Go to Daylight Donuts when they open at 1 A.M. The donuts are the best then because they are fresh.",
        "Visit the planetarium some night because the shows there start at 7 P.M. and are free to the public.",
        "Go to a football game and sit in the student section and help cheer the Lopers on to victory.",
        "Participate with your resident hall or Greek organization's Lip Sync.",
        "Find a few friends and build a snowman on the greens on campus to have fun in the snow.",
        "Attend a choir concert put on by one or all of the UNK choirs.",
        "Go get a ticket from the box office and attend one of the shows.",
        "Go to the Blue and Gold Showcase and learn about other organizations while also getting free stuff.",
        "Attend one of the movies or events put on at the theatre and see a beautiful piece of history."]
    let traditionPhotos: [UIImage] = [UIImage(named: "tradition_photo_1")!, UIImage(named: "tradition_photo_2")!, UIImage(named: "tradition_photo_3")!, UIImage(named: "tradition_photo_4")!, UIImage(named: "tradition_photo_5")!, UIImage(named: "tradition_photo_6")!, UIImage(named: "tradition_photo_7")!, UIImage(named: "tradition_photo_8")!, UIImage(named: "tradition_photo_9")!]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if rowID != nil {
            traditionDetailImage.image = traditionPhotos[rowID]
            traditionDetailTitle.text = traditionTitles[rowID]
            traditionSummary.text = traditionSummaries[rowID]
            traditionInstruction.text = traditionInstructions[rowID]
        }
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
