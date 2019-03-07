//
//  ViewController.swift
//  GoogleStreetViewSample
//
//  Created by vananh on 3/2/19.
//  Copyright © 2019 vananh. All rights reserved.
//

import UIKit
import GoogleMaps

class ViewController: UIViewController {
    
    
    @IBOutlet weak var googleStreetView: GMSPanoramaView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        googleStreetView.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
        googleStreetView.moveNearCoordinate(CLLocationCoordinate2D(latitude: 37.3317134, longitude: -122.0307466))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension ViewController: GMSPanoramaViewDelegate {
    func panoramaView(_ view: GMSPanoramaView, error: Error, onMoveNearCoordinate coordinate: CLLocationCoordinate2D) {
        print(error.localizedDescription)
    }
}

