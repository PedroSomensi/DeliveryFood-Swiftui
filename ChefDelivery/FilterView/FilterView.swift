//
//  FilterView.swift
//  ChefDelivery
//
//  Created by Pedro Somensi on 06/08/23.
//

import SwiftUI

struct FilterView: View {
    
    var action: (Int) -> Void
    
    var body: some View {
        
        Menu("Filtrar") {
            
            Button {
               action(0)
            } label: {
                Text("Limpar filtro")
            }
            
            Divider()
            
            ForEach(1...5, id: \.self) { rating in
                Button {
                   action(rating)
                } label: {
                    let star = rating > 1 ? "estrelas" : "estrela"
                    Text("\(rating) \(star) ou mais")
                }
            }
        }
        .foregroundColor(.black)
        
    }
}

struct FilterView_Previews: PreviewProvider {
    
    static var previews: some View {
        FilterView(action: { value in
            debugPrint("selecionado: \(value)")
        })
    }
    
}
