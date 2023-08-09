//
//  HomeFooterButtonView.swift
//  ChefDelivery
//
//  Created by Pedro Somensi on 08/08/23.
//

import SwiftUI

struct HomeFooterButtonView: View {
    
    @State private var offSet: CGFloat = 0
    
    @Binding var showNextScreen: Bool
    
    let width: CGFloat
    let height: CGFloat
    
    var body: some View {
        
        ZStack {
            Capsule()
                .fill(Color.customRed().opacity(0.2))
            
            Capsule()
                .fill(Color.customRed().opacity(0.2))
                .padding(8)
            
            Text("Descubra mais")
                .font(.title2)
                .bold()
                .foregroundColor(Color.customRedDark())
                .offset(x: 20)
            
            HStack {
                
                Capsule()
                    .fill(Color.customRed())
                    .frame(width: offSet + height)
                
                Spacer()
                
            }
            
            HStack {
                
                ZStack {
                    
                    Circle()
                        .fill(Color.customRed())
                    
                    Circle()
                        .fill(Color.customRedDark())
                        .padding(8)
                    
                    Image(systemName: "chevron.right.2")
                        .font(.system(size: 24))
                        .bold()
                        .foregroundColor(.white)
                    
                }
                
                Spacer()
                
            }
            .offset(x: offSet)
            .gesture(
                DragGesture()
                    .onChanged({ gesture in
                        
                        if gesture.translation.width >= 0 &&
                        offSet <= width - height {
                            withAnimation(.easeInOut(duration: 0.25)) {
                                offSet = gesture.translation.width
                            }
                        }
                        
                        
                    })
                    .onEnded({ _ in
                        
                        if offSet > (width - 80) / 2 {
                            showNextScreen = true
                        } else {
                            withAnimation(.easeInOut(duration: 0.25)) {
                                offSet = 0
                            }
                        }
                        
                    })
            )
            
            
        }
        .frame(
            width: width,
            height: height
        )
        
    }
    
}

struct HomeFooterButtonView_Previews: PreviewProvider {
    static var previews: some View {
        HomeFooterButtonView(showNextScreen: .constant(true),
                             width: 360,
                             height: 80)
    }
}
