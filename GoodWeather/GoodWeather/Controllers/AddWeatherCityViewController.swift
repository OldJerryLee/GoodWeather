//
//  AddWeatherCityViewController.swift
//  GoodWeather
//
//  Created by Fabricio Pujol on 07/05/22.
//

import UIKit

class AddWeatherCityViewController: UIViewController {

    @IBOutlet var cityNameTextField: UITextField!


    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func close(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }

    @IBAction func saveCityButtonPressed(_ sender: Any) {
    }

}
