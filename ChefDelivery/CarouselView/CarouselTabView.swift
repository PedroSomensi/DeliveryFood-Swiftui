//
//  CarouselTabView.swift
//  ChefDelivery
//
//  Created by Pedro Somensi on 15/07/23.
//

import SwiftUI

struct CarouselTabView: View {
    
    @State private var currentIndex = 1
    
    let items: [String] = [
        "barbecue-banner",
        "brazilian-meal-banner",
        "pokes-banner"
    ]
    
    
    var body: some View {
        TabView(selection: $currentIndex) {
         
            ForEach(items, id: \.self) { item in
                let index = items.firstIndex(of: item) ?? 0
                CarouselItemView(image: item)
                    .tag(index + 1)
            }
            
        }
        .frame(height: 180)
        .tabViewStyle(.page(indexDisplayMode: .always))
        .onAppear {
            
            Timer.scheduledTimer(
                withTimeInterval: 3,
                repeats: true) { _ in
                    
                    withAnimation(.easeInOut(duration: 1)) {
                        if currentIndex > items.count {
                            currentIndex = 1
                        }
                        currentIndex += 1
                    }
                    
            }
            
        }
    }
    
}

struct CarouselTabView_Previews: PreviewProvider {
    static var previews: some View {
        CarouselTabView()
            .previewLayout(.sizeThatFits)
    }
}
