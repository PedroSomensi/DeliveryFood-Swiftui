//
//  AmountProductView.swift
//  ChefDelivery
//
//  Created by Pedro Somensi on 01/08/23.
//

import SwiftUI

struct AmountProductView: View {
    
    @Binding var amount: Int
    
    var body: some View {
        
        VStack(spacing: 16) {
            Text("Quantidade")
                .bold()
                .font(.title3)
            
            HStack {
                Button {
                    if amount != 0 {
                        amount -= 1
                    }
                } label: {
                    Image(systemName: "minus.circle.fill")
                        .font(.title)
                        .bold()
                }
                
                Text("\(amount)")
                    .bold()
                    .font(.title2)
                
                Button {
                    amount += 1
                } label: {
                    Image(systemName: "plus.circle.fill")
                        .font(.title)
                        .bold()
                }
            }
        }
        
    }
}

struct AmountProductView_Previews: PreviewProvider {
    static var previews: some View {
        AmountProductView(amount: .constant(1))
    }
}
