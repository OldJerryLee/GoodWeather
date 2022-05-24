//
//  WeatherListTableViewController.swift
//  GoodWeather
//
//  Created by Fabricio Pujol on 07/05/22.
//

import UIKit

class WeatherListTableViewController: UITableViewController, AddWeatherDelegate {

    private var weatherListViewModel = WeatherListViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.prefersLargeTitles = true
    }

    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return weatherListViewModel.numberOfRows(section)
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier: "WeatherTableViewCell", for: indexPath) as! WeatherTableViewCell

        let weatherVM = weatherListViewModel.modelAt(indexPath.row)

        cell.configure(weatherVM)
        return cell
    }

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }

    func addWeatherDidSave(vm: WeatherViewModel) {
        print(vm)
        weatherListViewModel.addWeatherViewModel(vm)
        tableView.reloadData()
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "AddWeatherCityViewController" {
            prepareSegueForAddWeatherCityViewController(segue: segue)
        }
    }

    func prepareSegueForAddWeatherCityViewController(segue: UIStoryboardSegue) {
        guard let nav = segue.destination as? UINavigationController else {
            fatalError("navigationcontroller not found")
        }

        guard let addWeatherCityVC = nav.viewControllers.first as? AddWeatherCityViewController else {
            fatalError("AddWeatherCityController Not Found")
        }

        addWeatherCityVC.delegate = self
    }

}
