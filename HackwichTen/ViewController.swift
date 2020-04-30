//
//  ViewController.swift
//  HackwichTen
//
//  Created by Ashley Aurellano on 4/29/20.
//  Copyright © 2020 Ashley Aurellano. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation


class ViewController: UIViewController
{
    
    @IBOutlet weak var mapView: MKMapView!
    
    let initialLocation = CLLocation(latitude: 21.361888, longitude: -158.055725)
    let regionRadius: CLLocationDistance = 10000

    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        centerMapOnLocation(location: initialLocation)
        
        let restaurantOne = Restaurant(title: "Kalapawai", type: "American", coordinate: CLLocationCoordinate2D(latitude: 21.346470, longitude: -158.080098))
        mapView.addAnnotation(restaurantOne)
        
        let restaurantTwo = Restaurant(title: "Sushi Bay", type: "Japanese", coordinate: CLLocationCoordinate2D(latitude: 21.339780, longitude: -158.078292))
              mapView.addAnnotation(restaurantTwo)
      
    }
    
    func centerMapOnLocation(location:CLLocation)
    {
        let coordinateRegion = MKCoordinateRegion(center:location.coordinate,latitudinalMeters: regionRadius,longitudinalMeters: regionRadius)
        mapView.setRegion(coordinateRegion, animated: true)
    }


}
