//
//  MapViewController.swift
//  Postfeed
//
//  Created by Milan Shah on 5/10/20.
//  Copyright © 2020 Milan Shah. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController {
    
    @IBOutlet weak var mapView: MKMapView!

    var thePost : Post?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        guard let post = thePost else { return }
        let ann = MKPointAnnotation.init()
        ann.coordinate = CLLocationCoordinate2D.init(latitude: post.lat, longitude: post.lng)
        ann.title = thePost?.userName
        ann.subtitle = thePost?.thought
        mapView.addAnnotation(ann)
        mapView.showAnnotations(mapView.annotations, animated: true)
    }
}
