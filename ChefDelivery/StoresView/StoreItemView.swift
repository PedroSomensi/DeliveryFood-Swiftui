//
//  StoreItemView.swift
//  ChefDelivery
//
//  Created by Pedro Somensi on 15/07/23.
//

import SwiftUI

struct Store: Identifiable {
    
    let id: Int
    let image: String
    let name: String
    
}

struct StoreItemView: View {
    
    let model: Store
    
    var body: some View {
        HStack {
            Image(model.image)
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
        StoreItemView(model: Store(id: 0,
                                   image: "monstro-burger-logo",
                                   name: "Monstro Burger"))
        .previewLayout(.sizeThatFits)
    }
}
