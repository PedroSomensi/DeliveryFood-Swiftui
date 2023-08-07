//
//  Product.swift
//  ChefDelivery
//
//  Created by Pedro Somensi on 31/07/23.
//

import Foundation

final class Product: Identifiable, ObservableObject {
    
    let id: Int
    let name: String
    let description: String
    let image: String
    let price: Double
    
    init(id: Int, name: String, description: String, image: String, price: Double) {
        self.id = id
        self.name = name
        self.description = description
        self.image = image
        self.price = price
    }
    
}
