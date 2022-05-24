//
//  AddWeatherCityViewController.swift
//  GoodWeather
//
//  Created by Fabricio Pujol on 07/05/22.
//

import UIKit

protocol AddWeatherDelegate: AnyObject {
    func addWeatherDidSave(vm: WeatherViewModel)
}

class AddWeatherCityViewController: UIViewController {

    private var addWeatherVM = AddWeatherViewModel()
    weak var delegate: AddWeatherDelegate?

    @IBOutlet var cityNameTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func close(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }

    @IBAction func saveCityButtonPressed(_ sender: Any) {
        if let city = cityNameTextField.text {
            addWeatherVM.addWeather(for: city) { (vm) in
                self.delegate?.addWeatherDidSave(vm: vm)
                self.dismiss(animated: true, completion: nil)
            }
        }
    }

}
