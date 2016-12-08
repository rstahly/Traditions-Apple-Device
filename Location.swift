//
//  Location.swift
//  TestApp3
//
//  Created by Rachel Feddersen on 11/7/16.
//  Copyright © 2016 Rachel M Feddersen. All rights reserved.
//

import MapKit

class Location: NSObject, MKAnnotation {
    let title: String?
    let locationName: String
    let discipline: String
    let coordinate: CLLocationCoordinate2D
    
    init(title: String, locationName: String, discipline: String, coordinate: CLLocationCoordinate2D) {
        self.title = title
        self.locationName = locationName
        self.discipline = discipline
        self.coordinate = coordinate
        
        super.init()
    }
    
    var subtitle: String? {
        return locationName
    }
}
