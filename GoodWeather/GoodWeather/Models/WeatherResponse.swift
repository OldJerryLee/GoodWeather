//
//  WeatherResponse.swift
//  GoodWeather
//
//  Created by Fabricio Pujol on 09/05/22.
//

import Foundation

struct WeatherResponse: Decodable {
    let main: Weater
    let name: String
}

struct Weater: Decodable {
    let temp: Double
    let humidity: Double
}

