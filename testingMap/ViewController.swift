//
//  ViewController.swift
//  testingMap
//
//  Created by Scholar on 6/29/22.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        createAnnotations(locations: annotationLocations)
    }
    // annotation locations
    let annotationLocations = [
        ["title": "Lakeside Animal Clinic", "subtitle": "Open 7am - 6pm M-F", "latitude": 29.737600, "longitude": -95.588080],
        ["title": "Rice Village Animal Hospital", "subtitle": "Open 8am-6pm M-F", "latitude":  29.717540, "longitude":  -95.413120]
        
    ]

    //create annotation
    //[Dictionary<String, Any>] or [[String: Any]] works for argument type
    func createAnnotations(locations: [[String : Any]]) {
        for location in locations {
            let annotations = MKPointAnnotation()
            annotations.title = location["title"] as? String
            annotations.subtitle = location ["subtitle"] as? String
            annotations.coordinate = CLLocationCoordinate2D(latitude: location["latitude"] as! CLLocationDegrees, longitude: location["longitude"] as! CLLocationDegrees)
            mapView.addAnnotation(annotations)
        }
    }
}

