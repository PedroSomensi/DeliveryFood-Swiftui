//
//  Double+.swift
//  ChefDelivery
//
//  Created by Pedro Somensi on 01/08/23.
//

import Foundation

extension Double {
    
    func toBrazilianReal() -> String {
        let formattedString = String(format: "%.2f", self)
        return "R$ " + formattedString.replacingOccurrences(of: ".", with: ",")
    }
    
}
