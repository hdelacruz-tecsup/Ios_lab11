//
//  ViewController.swift
//  lab11
//
//  Created by mbtec22 on 6/10/20.
//  Copyright © 2020 Tecsup. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var mapita: MKMapView!
    
    @IBOutlet weak var selector: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mapita.showsUserLocation = true
    }


    @IBAction func cambiarVisualizacionMapa(_ sender: Any) {
        
        //Estructura de casos
        
        switch selector.selectedSegmentIndex {
        case 0:
            mapita.mapType = .standard
        case 1:
            mapita.mapType = .satellite
        case 2:
            mapita.mapType = .hybrid
        default:
            break
        }
    }
}

