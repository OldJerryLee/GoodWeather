//
//  Constants.swift
//  GoodWeather
//
//  Created by Fabricio Pujol on 15/05/22.
//

import Foundation

struct Constants {

    struct Urls {

        static func urlForWeatherByCity(city: String) -> URL {
            return URL(string: "https://api.openweathermap.org/data/2.5/weather?q=\(city.escaped())&appid=6b076c9a68d308aaf51acbd9769841ab&units=imperial")!
        }
        
    }

}
