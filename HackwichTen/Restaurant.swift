//
//  Restaurant.swift
//  HackwichTen
//
//  Created by Ashley Aurellano on 4/29/20.
//  Copyright © 2020 Ashley Aurellano. All rights reserved.
//

import UIKit
import MapKit

class Restaurant: NSObject, MKAnnotation {
    
    //create 3 variables that hold date for the annotation
    let restaurantTitle: String
    let restaurantType: String
    let coordinate: CLLocationCoordinate2D
    
    //initialize the MKAnnotation object - these are parameters, not variables
    init(title: String, type: String, coordinate: CLLocationCoordinate2D)
    {
        self.restaurantTitle = title
        self.restaurantType = type
        self.coordinate = coordinate
        
        super.init()
    }
    
    var subtitle: String? {
        return restaurantTitle
    }

}
