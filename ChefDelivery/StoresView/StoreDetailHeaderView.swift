//
//  StoreDetailHeaderView.swift
//  ChefDelivery
//
//  Created by Pedro Somensi on 06/08/23.
//

import SwiftUI

struct StoreDetailHeaderView: View {
    
    @EnvironmentObject var store: Store
    
    var body: some View {
        
        VStack {
            Image(store.headerImage)
                .resizable()
                .scaledToFit()
            
            
            HStack {
                Text(store.name)
                    .font(.title)
                    .bold()
                Spacer()
                Image(store.logoImage)
            }
            .padding(8)
            
            HStack {
                Text(store.address)
                Spacer()
                ForEach(1...store.stars, id: \.self) { _ in
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                        .font(.caption)
                }
            }
            .padding(8)
        }
        
    }
}

struct StoreDetailHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        StoreDetailHeaderView()
            .environmentObject(storesMock[0])
    }
}
