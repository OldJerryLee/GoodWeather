//
//  Double+Extension.swift
//  GoodWeather
//
//  Created by Fabricio Pujol on 15/05/22.
//

import Foundation
extension Double {
    func formatAsDegree() -> String {
        return String(format: "%.0f°", self)
    }
}
