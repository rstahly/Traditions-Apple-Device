//
//  ContactUsController.swift
//  TestApp3
//
//  Created by Rachel Feddersen on 11/7/16.
//  Copyright © 2016 Rachel M Feddersen. All rights reserved.
//

import UIKit
import MapKit

class ContactUsController: UIViewController {
    // Button for navigation bar
    @IBOutlet weak var menuButton: UIBarButtonItem!
    
    // The map that will display the location of the Alumni association
    @IBOutlet weak var mapView: MKMapView!
    @IBOutlet weak var contactUsLabel: UILabel!
    @IBOutlet weak var organizationLabe: UILabel!
    @IBOutlet weak var alumniPhoneNumber: UILabel!
    @IBOutlet weak var alumniAddress: UILabel!
    
    // Initialize variables
    let regionRadius: CLLocationDistance = 1000

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if self.revealViewController() != nil {
            menuButton.target = self.revealViewController()
            menuButton.action = "revealToggle:"
            self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        }
        
        let location = "214 W 39th St. Kearney, NE 68845"
        let geocoder = CLGeocoder()
        geocoder.geocodeAddressString(location) { [weak self] placemarks, error in
            if let placemark = placemarks?.first, let location = placemark.location {
                let mark = MKPlacemark(placemark: placemark)
                let locationName = Location(title: "UNK Alumni Association",
                                            locationName: "214 W 39th St. Kearney, NE",
                                            discipline: "Building",
                                            coordinate: mark.coordinate)
                
                if var region = self?.mapView.region {
                    region.center = location.coordinate
                    region.span.longitudeDelta /= 4096.0
                    region.span.latitudeDelta /= 4096.0
                    self?.mapView.setRegion(region, animated: true)
                    self?.mapView.addAnnotation(locationName)
                }
            }
        }
        
        let phoneTap = UITapGestureRecognizer(target: self, action: #selector(ContactUsController.phoneTapFunc(_:)))
        let addressTap = UITapGestureRecognizer(target: self, action: #selector(ContactUsController.addressTapFunc(_:)))
        
        alumniPhoneNumber.addGestureRecognizer(phoneTap)
        alumniAddress.addGestureRecognizer(addressTap)
    }
    
    func centerMapOnLocation(location: CLLocation) {
        let coordinateRegion = MKCoordinateRegionMakeWithDistance(location.coordinate, regionRadius * 2.0, regionRadius * 2.0)
        mapView.setRegion(coordinateRegion, animated: true)
    }
    
    func phoneTapFunc(sender:UITapGestureRecognizer) {
        let targetURL = NSURL(string: "tel://3086985271")
        let isAvailable = UIApplication.sharedApplication().canOpenURL(targetURL!)
        
        if isAvailable {
            UIApplication.sharedApplication().openURL(targetURL!)
        }
    }
    
    func addressTapFunc(sender:UITapGestureRecognizer) {
        let targetURL = NSURL(string: "http://maps.apple.com/?address=214%20W%2039th%20St.%20Kearney,%20NE%2068845")
        let isAvailable = UIApplication.sharedApplication().canOpenURL(targetURL!)
        
        if isAvailable {
            UIApplication.sharedApplication().openURL(targetURL!)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
