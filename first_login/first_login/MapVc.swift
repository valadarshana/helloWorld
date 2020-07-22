//
//  MapVc.swift
//  first_login
//
//  Created by user on 19/07/20.
//  Copyright © 2020 Nextpage. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class MapVc: UIViewController ,CLLocationManagerDelegate,MKMapViewDelegate
 {
    let locationManager = CLLocationManager()
    @IBOutlet weak var mapView:MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        // For use in foreground
        self.locationManager.requestWhenInUseAuthorization()

        if CLLocationManager.locationServicesEnabled() {
            locationManager.delegate = self
            locationManager.startUpdatingLocation()
        }
        

        mapView.delegate = self
        mapView.mapType = .standard
        mapView.isZoomEnabled = true
        mapView.isScrollEnabled = true

        if let coor = mapView.userLocation.location?.coordinate{
            mapView.setCenter(coor, animated: true)
        }
       
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let locValue:CLLocationCoordinate2D = manager.location!.coordinate

        mapView.mapType = MKMapType.standard
        let annotation = MKPointAnnotation()
        annotation.coordinate = locValue
        annotation.title = "Vala Darshana"
        annotation.subtitle = "current location"
        mapView.addAnnotation(annotation)

        //centerMap(locValue)
    }
    
    

    
}
