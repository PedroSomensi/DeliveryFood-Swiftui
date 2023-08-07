//
//  ProductDetailView.swift
//  ChefDelivery
//
//  Created by Pedro Somensi on 01/08/23.
//

import SwiftUI

struct ProductDetailView: View {

    let product: Product
    
    @State private var amountProduct = 1
    
    var body: some View {
    
        VStack {
            ProductDetailHeaderView(product: product)
            Spacer()
            AmountProductView(amount: $amountProduct)
            Spacer()
            CartButtonView()

        }
        
    }
    
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView(product: storesMock[0].products[0])
    }
}
