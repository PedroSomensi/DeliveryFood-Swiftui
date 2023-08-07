//
//  BackgroundCirclesView.swift
//  ChefDelivery
//
//  Created by Pedro Somensi on 06/08/23.
//

import SwiftUI

typealias AnimatingRange = (end: CGFloat, start: CGFloat)

struct BackgroundCirclesView: View {
    
    private let opacity = AnimatingRange(end: 0.5, start: 0)
    private let width = AnimatingRange(end: 200, start: 0)
    
    private let radius: CGFloat = 60
    private let position: CGFloat = 50
        
    @Binding var isAnimating: Bool
    
    var body: some View {
        
        GeometryReader { geometry in
            
            
            Circle()
                .foregroundColor(Color.customRed())
                .frame(width: isAnimating ? width.end : width.start)
                .position(x: isAnimating ? position : -position,
                          y: isAnimating ? 100 : -100)
                .blur(radius: radius)
                .opacity(isAnimating ? opacity.end : opacity.start)
            
            Circle()
                .foregroundColor(Color.customRedDark())
                .frame(width: isAnimating ? width.end : width.start)
                .position(x: isAnimating ? geometry.size.width - position : geometry.size.width + position,
                          y: isAnimating ? geometry.size.height - position : geometry.size.height + position)
                .blur(radius: radius)
                .opacity(isAnimating ? opacity.end : opacity.start)
            
        }
        
    }
    
}

struct BackgroundCirclesView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundCirclesView(isAnimating: .constant(false))
    }
}
