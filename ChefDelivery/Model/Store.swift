//
//  Store.swift
//  ChefDelivery
//
//  Created by Pedro Somensi on 31/07/23.
//

import Foundation

final class Store: Identifiable, ObservableObject {
    
    let id: Int
    let name: String
    let logoImage: String
    let headerImage: String
    let address: String
    let stars: Int
    let products: [Product]
    
    init(
        id: Int,
        name: String,
        logoImage: String,
        headerImage: String,
        address: String,
        stars: Int,
        products: [Product]
    ) {
        
        self.id = id
        self.name = name
        self.logoImage = logoImage
        self.headerImage = headerImage
        self.address = address
        self.stars = stars
        self.products = products
        
    }
    
}
