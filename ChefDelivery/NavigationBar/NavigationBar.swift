//
//  NavigationBar.swift
//  ChefDelivery
//
//  Created by Pedro Somensi on 14/07/23.
//

import SwiftUI

struct NavigationBar: View {
    var body: some View {
        HStack {
            
            Spacer()
            
            Button("R. Vergueiro, 3185") { }
            .font(.subheadline)
            .fontWeight(.semibold)
            .tint(.black)
            
            Spacer()
            
            Button(action: {}) {
                Image(systemName: "bell.badge")
                    .foregroundColor(.red)
                    .font(.title3)
            }
            
        }
    }
}

struct NavigationBar_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBar()
            .previewLayout(.sizeThatFits)
    }
}
