//
//  OrderTypeView.swift
//  ChefDelivery
//
//  Created by Pedro Somensi on 15/07/23.
//

import SwiftUI

struct OrderTypeView: View {
    
    let model: Order
    
    var body: some View {
        
        VStack(spacing: 5) {
            
            Image(model.image)
                .resizable()
                .scaledToFit()
                .fixedSize(horizontal: false,
                           vertical: true)
            
            Text(model.name)
                .font(.system(size: 10))
    
        }.frame(width: 70, height: 100)
        
    }
    
}

struct OrderTypeView_Previews: PreviewProvider {
    static var previews: some View {
        OrderTypeView(
            model: Order(
                id: 0,
                name: "Restaurantes",
                image: "hamburguer"
            )
        ).previewLayout(.sizeThatFits)
    }
}
