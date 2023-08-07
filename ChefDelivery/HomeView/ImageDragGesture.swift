//
//  ImageDragGesture.swift
//  ChefDelivery
//
//  Created by Pedro Somensi on 07/08/23.
//

import SwiftUI

struct ImageDragGesture: View {
    
    var name: String
    
    @Binding var offSet: CGSize
    @Binding var isAnimating: Bool
    
    private let paddingAnimating = AnimatingRange(end: 32, start: 92)
    private let opacityAnimating = AnimatingRange(end: 1, start: 0)
    
    var body: some View {
        
        Image("image")
            .resizable()
            .scaledToFit()
            .shadow(radius: 60)
            .padding(isAnimating ? paddingAnimating.end : paddingAnimating.start)
            .opacity(isAnimating ? opacityAnimating.end : opacityAnimating.start)
            .offset(x: offSet.width, y: offSet.height)
            .gesture(
                DragGesture()
                    .onChanged({ gesture in
                        withAnimation(.easeInOut(duration: 0.5)) {
                            offSet = gesture.translation
                        }
                    })
                    .onEnded({ _ in
                        withAnimation(.easeInOut(duration: 0.5)) {
                            offSet = .zero
                        }
                    })
            )
        
    }
}

struct ImageDragGesture_Previews: PreviewProvider {
    static var previews: some View {
        ImageDragGesture(name: "Image",
                         offSet: .constant(.zero),
                         isAnimating: .constant(false))
    }
}
