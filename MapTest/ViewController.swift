//
//  ViewController.swift
//  MapTest
//
//  Created by The book Air on 12/08/2019.
//  Copyright © 2019 jisung. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController, MKMapViewDelegate {

    @IBOutlet weak var map: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let latitude : CLLocationDegrees = 37.4862075
        
        let longitude : CLLocationDegrees = 126.8762288
        
        let lanDelta : CLLocationDegrees = 0.5
        
        let lonDelta : CLLocationDegrees = 0.5
        
        let span = MKCoordinateSpan(latitudeDelta: lanDelta, longitudeDelta: lonDelta)
        
        let coordinate = CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
        
        let region = MKCoordinateRegion(center: coordinate, span: span)
        
        map.setRegion(region, animated: true)
        
        
    }


}

