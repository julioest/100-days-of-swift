//
//  ViewController.swift
//  SetLocation
//
//  Created by Julio Estrada on 4/9/17.
//  Copyright © 2017 julioest. All rights reserved.
//

import UIKit
import CoreLocation

class ViewController: UIViewController, CLLocationManagerDelegate {

    // MARK: - View Did Load
    override func viewDidLoad() {
        super.viewDidLoad()
        locationManager.delegate = self
    }

    // MARK: - Outlets
    @IBOutlet weak var locationLabel: UILabel!


    // MARK: - Interactions
    @IBAction func tapSetLocationButton(_ sender: UIButton) {
        getLocation()
    }

    // MARK: - Location
    let locationManager = CLLocationManager()

    // MARK: Location Functions
    func getLocation() {
        locationManager.requestWhenInUseAuthorization()
        locationManager.desiredAccuracy = kCLLocationAccuracyKilometer
        locationManager.startUpdatingLocation()
    }

    // MARK: CLLocation Manager Delegate
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        locationManager.stopUpdatingLocation()
        let geoCoder = CLGeocoder()

        geoCoder.reverseGeocodeLocation(manager.location!) { (placemarks, error) in
            if let placemarksData = placemarks {
                let locationData = placemarksData[0]
                let subcity = locationData.subLocality
                let city = locationData.locality!
                let state = locationData.administrativeArea!
                let zipCode = locationData.postalCode!
                let country = locationData.country!
                let location = "\(subcity ?? "Glenvar Heights") - \(city), \(state) \(zipCode), \(country)"
                self.locationLabel.text = location
                self.locationLabel.textColor = .black
            } else {
                print("Error: \(error!.localizedDescription)")
            }
        }
    }



}

















