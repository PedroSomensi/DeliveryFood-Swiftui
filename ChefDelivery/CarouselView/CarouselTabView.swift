//
//  CarouselTabView.swift
//  ChefDelivery
//
//  Created by Pedro Somensi on 15/07/23.
//

import SwiftUI

struct CarouselTabView: View {
    
    let items: [String] = [
        "barbecue-banner",
        "brazilian-meal-banner",
        "pokes-banner"
    ]
    
    
    var body: some View {
        TabView {
         
            ForEach(items, id: \.self) { item in
                CarouselItemView(image: item)
            }
            
        }
        .frame(height: 180)
        .tabViewStyle(.page(indexDisplayMode: .always))
    }
    
}

struct CarouselTabView_Previews: PreviewProvider {
    static var previews: some View {
        CarouselTabView()
            .previewLayout(.sizeThatFits)
    }
}
