//
//  CartButton.swift
//  ChefDelivery
//
//  Created by Pedro Somensi on 01/08/23.
//

import SwiftUI

struct CartButtonView: View {
    var body: some View {
        Button {
            debugPrint("botão clicado")
        } label: {
            HStack {
                Image(systemName: "cart")
                Text("Adicionar ao carrinho")
            }
            .padding(.horizontal, 32)
            .padding(.vertical, 16)
            .font(.title3)
            .bold()
            .background(Color.customRed())
            .foregroundColor(.white)
            .cornerRadius(32)
            .shadow(color: Color.customRedDark().opacity(0.5),
                    radius: 10,
                    x: 6,
                    y: 8)
            
        }
    }
}

struct CartButton_Previews: PreviewProvider {
    static var previews: some View {
        CartButtonView()
    }
}
