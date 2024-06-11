//
//  ViewController.swift
//  MapKit_Example
//
//  Created by Mandar Choudhary on 29/05/24.
//

import UIKit
import MapKit

struct places {
    var latitude : Double
    var Laungitude : Double
    var name : String
}

class ViewController: UIViewController {

    @IBOutlet weak var myMapView: MKMapView!
    
    var PlacesArray : [places] = [ places(latitude: 18.4088, Laungitude: 76.5604, name: "Latur"), places(latitude: 19.8347, Laungitude: 75.8816, name: "Jalna"), places(latitude: 28.7041, Laungitude: 77.1025, name: "Delhi"), places(latitude: 51.5072, Laungitude: 0.1276, name: "London")]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        showPlaces()
    }
    
    func showPlaces () {
        for place in PlacesArray {
            let Annotation = MKPointAnnotation()
            Annotation.title = place.name
            Annotation.coordinate = CLLocationCoordinate2D(latitude: place.latitude, longitude: place.Laungitude)
            myMapView.addAnnotation(Annotation)
            
        }
    }

}

