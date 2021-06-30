//
//  ViewController.swift
//  LocationMapTracking
//
//  Created by user198555 on 6/30/21.
//

import UIKit
import CoreLocation
import MapKit


class ViewController: UIViewController,CLLocationManagerDelegate {

    @IBOutlet var mapView: MKMapView!
    @IBOutlet var myTextView: UITextView!

    let locationManager = CLLocationManager()
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyNearestTenMeters
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
        mapView.showsUserLocation = true
    
    
    }
    
    func locationManager(_ manager:CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        if let newLocation = locations.last{
            let latitudeString = "\(newLocation.coordinate.latitude)"
            let longitudeString = "\(newLocation.coordinate.longitude)"
            
            myTextView.text = "Latitude: " + latitudeString + "\nLongitude: " + longitudeString
            
            let span = MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
            let myLocation = CLLocationCoordinate2D(latitude: newLocation.coordinate.latitude, longitude: newLocation.coordinate.longitude)
            let region = MKCoordinateRegion(center: myLocation, span: span)
            mapView.setRegion(region, animated: true)
            
            
            
            
            
        }
    }


}

