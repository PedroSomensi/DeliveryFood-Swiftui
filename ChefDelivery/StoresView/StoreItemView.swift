//
//  StoreItemView.swift
//  ChefDelivery
//
//  Created by Pedro Somensi on 15/07/23.
//

import SwiftUI

struct StoreItemView: View {
    
    let model: Store
    
    var body: some View {
        HStack {
            Image(model.logoImage)
                .resizable()
                .scaledToFit()
                .cornerRadius(25)
                .frame(width: 50, height: 50)
            
            VStack {
                Text(model.name)
                    .font(.subheadline)
            }
            
            Spacer()
        }
        
    }
    
}

struct StoreItemView_Previews: PreviewProvider {
    static var previews: some View {
        StoreItemView(model: storesMock[0])
        .previewLayout(.sizeThatFits)
    }
}
