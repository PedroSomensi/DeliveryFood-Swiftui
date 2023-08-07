//
//  ProductItemView.swift
//  ChefDelivery
//
//  Created by Pedro Somensi on 01/08/23.
//

import SwiftUI

struct ProductItemView: View {
    
    let product: Product
    
    var body: some View {
        
        HStack(spacing: 8) {
            
            VStack(alignment: .leading, spacing: 8) {
                Text(product.name)
                    .bold()
                    .foregroundColor(.black)
                
                Text(product.description)
                    .foregroundColor(.black.opacity(0.5))
                    .foregroundColor(.black)
                    .multilineTextAlignment(.leading)
                
                Text(product.price.toBrazilianReal())
                    .foregroundColor(.black)
                    .bold()
                
            }
            
            Spacer()
            
            Image(product.image)
                .resizable()
                .scaledToFit()
                .cornerRadius(12)
                .frame(width: 120, height: 120)
                .shadow(color: .black.opacity(0.3),
                        radius: 20,
                        x: 6,
                        y: 8)
        }.padding()
        
    }
}

struct ProductItemView_Previews: PreviewProvider {
    static var previews: some View {
        ProductItemView(product: storesMock[0].products[0])
    }
}
