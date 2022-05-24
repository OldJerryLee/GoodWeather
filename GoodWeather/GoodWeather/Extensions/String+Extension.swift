//
//  String+Extension.swift
//  GoodWeather
//
//  Created by Fabricio Pujol on 15/05/22.
//

import Foundation

extension String {

    func escaped() -> String {
        return self.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed) ?? self
    }
    
}
