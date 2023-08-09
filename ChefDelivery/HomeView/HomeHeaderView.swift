//
//  HomeHeaderView.swift
//  ChefDelivery
//
//  Created by Pedro Somensi on 06/08/23.
//

import SwiftUI

struct HomeHeaderView: View {
    
    @Binding var isAnimating: Bool
    
    var body: some View {
        
        VStack {
            
            Text("Chef Delivery")
                .font(.system(size: 48))
                .fontWeight(.heavy)
                .foregroundColor(Color.customRed())
                .opacity(isAnimating ? 1 : 0)
                .offset(y: isAnimating ? 0 : -40)
            
            Text("Peça as suas comidas no conforto da sua casa.")
                .font(.title2)
                .padding()
                .multilineTextAlignment(.center)
                .foregroundColor(.black.opacity(0.7))
                .opacity(isAnimating ? 1 : 0)
                .offset(y: isAnimating ? 0 : -40)
            
            Spacer()
            
        }
        
    }
}

struct HomeHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HomeHeaderView(isAnimating: .constant(false))
    }
}
