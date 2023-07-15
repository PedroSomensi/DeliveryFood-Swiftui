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
    
    var body: some View {
        
        VStack(alignment: .leading) {
            Text(title)
                .font(.headline)
            
            VStack(alignment: .leading, spacing: 30) {
                ForEach(stores) { store in
                    StoreItemView(model: store)
                    Divider()
                }
            }
            
        }.padding(20)
        
    }
    
}

struct StoresContainerView_Previews: PreviewProvider {
    static var previews: some View {
        StoresContainerView()
            .previewLayout(.sizeThatFits)
    }
}
