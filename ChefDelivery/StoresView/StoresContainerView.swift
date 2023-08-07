//
//  StoresContainerView.swift
//  ChefDelivery
//
//  Created by Pedro Somensi on 15/07/23.
//

import SwiftUI

struct StoresContainerView: View {
    
    let stores: [Store] = storesMock
    let title: String = "Lojas"
    
    @State private var ratingFilter = 0
    
    private var filteredStores: [Store] {
        return stores.filter { store in
            store.stars >= ratingFilter
        }
    }
    
    var body: some View {
        
        VStack(alignment: .leading) {
            
            HStack {
                Text(title)
                    .font(.headline)
                
                Spacer()
                
                FilterView(action: { rating in
                    ratingFilter = rating
                })
                
            }
            
            VStack(alignment: .leading, spacing: 30) {
                
                if filteredStores.isEmpty {
                    Text("Nenhum resultado encontrado.")
                        .font(.title2)
                        .bold()
                        .foregroundColor(Color.customRed())
                        .padding(.vertical, 32)
                        .frame(maxWidth: .infinity)
                } else {
                    ForEach(filteredStores) { store in
                        NavigationLink {
                            StoreDetailView()
                                .environmentObject(store)
                        } label: {
                            StoreItemView(model: store)
                        }
                        Divider()
                    }
                }
            }.foregroundColor(.black)
            
        }.padding(20)
        
    }
    
}



struct StoresContainerView_Previews: PreviewProvider {
    static var previews: some View {
        StoresContainerView()
            .previewLayout(.sizeThatFits)
            .environmentObject(storesMock[0])
    }
}
