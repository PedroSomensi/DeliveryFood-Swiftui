//
//  ContentView.swift
//  ChefDelivery
//
//  Created by Pedro Somensi on 14/07/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            
            NavigationBar()
                .padding(.horizontal, 15)
            
            ScrollView(.vertical,
                       showsIndicators: true) {
                
                VStack(spacing: 20) {
                    OrderTypeGridView()
                    CarouselTabView()
                    StoresContainerView()
                }
                
            }
            
        }.padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}








