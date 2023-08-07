//
//  StoreDetailView.swift
//  ChefDelivery
//
//  Created by Pedro Somensi on 31/07/23.
//

import SwiftUI

struct StoreDetailView: View {
    
    @EnvironmentObject var store: Store
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        
        ScrollView(showsIndicators: false) {
            VStack(alignment: .leading) {
                
                StoreDetailHeaderView()
                    .environmentObject(store)
                
                StoreDetailProductsView(products: store.products)
                
                
            }
            .navigationTitle(store.name)
            .navigationBarBackButtonHidden()
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button {
                        presentationMode.wrappedValue.dismiss()
                    } label: {
                        HStack(spacing: 4) {
                            Image(systemName: "cart")
                            Text("Lojas")
                        }
                        .foregroundColor(Color.customRed())
                    }

                }
            }
            
        }
        
    }
    
}

struct StoreDetailView_Previews: PreviewProvider {
    
    static var previews: some View {
        StoreDetailView()
            .environmentObject(storesMock[0])
    }
    
}
