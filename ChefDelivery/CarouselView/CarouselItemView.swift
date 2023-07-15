//
//  CarouselItemView.swift
//  ChefDelivery
//
//  Created by Pedro Somensi on 15/07/23.
//

import SwiftUI

struct CarouselItemView: View {
    
    let image: String
    
    var body: some View {
    
        Image(image)
            .resizable()
            .scaledToFit()
        
    }
    
}

struct CarouselItemView_Previews: PreviewProvider {
    static var previews: some View {
        CarouselItemView(image: "barbecue-banner")
            .previewLayout(.sizeThatFits)
    }
}
