//
//  HomeView.swift
//  ChefDelivery
//
//  Created by Pedro Somensi on 06/08/23.
//

import SwiftUI

struct HomeView: View {
    
    @State private var isAnimating = false
    @State private var imageOffset: CGSize = .zero
    
    var body: some View {
        
        ZStack {
            GeometryReader { geometry in
                BackgroundCirclesView(isAnimating: $isAnimating)
                    .frame(width: geometry.size.width,
                           height: geometry.size.height)
            }
            
            HomeHeaderView(isAnimating: $isAnimating)
            
            ImageDragGesture(name: "image",
                             offSet: $imageOffset,
                             isAnimating: $isAnimating)
            
        }
        .onAppear {
            withAnimation(.easeInOut(duration: 1.5)) {
                isAnimating = true
            }
        }
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
