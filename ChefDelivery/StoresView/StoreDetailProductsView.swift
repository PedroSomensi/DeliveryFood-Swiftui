//
//  StoreDetailProductsView.swift
//  ChefDelivery
//
//  Created by Pedro Somensi on 06/08/23.
//

import SwiftUI

struct StoreDetailProductsView: View {
    
    private let products: [Product]
    @State private var selectedProduct: Product?
    
    init(products: [Product]) {
        self.products = products
    }
    
    var body: some View {
        
        VStack(alignment: .leading) {
            Text("Produtos")
                .font(.title2)
                .bold()
                .padding()
            
            ForEach(products) { product in
                
                Button {
                    selectedProduct = product
                } label: {
                    ProductItemView(product: product)
                }
                .sheet(item: $selectedProduct) { product in
                    ProductDetailView(product: product)
                }
                
                /*
                 NavigationLink(destination: ProductDetailView(product: product)) {
                 ProductItemView(product: product)
                 }
                 */
                
            }
        }
        
    }
}

struct StoreDetailProductsView_Previews: PreviewProvider {
    static var previews: some View {
        StoreDetailProductsView(products: storesMock[0].products)
    }
}
