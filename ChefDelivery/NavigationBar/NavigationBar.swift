//
//  NavigationBar.swift
//  ChefDelivery
//
//  Created by Leandro Morais on 09/11/23.
//

import SwiftUI

struct NavigationBar: View {
    
    @Environment(\.colorScheme) var colorScheme
    
    
    var body: some View {
        HStack {
            Spacer()
            Button("R. Arco Verde, 973") {
                
            }
            .font(.subheadline)
            .fontWeight(.semibold)
            .foregroundColor(colorScheme == .light ? .black : .white)
            
            Spacer()
            
            Button(action: {}) {
                Image(systemName: "bell.badge")
            }
            .font(.title3)
            .foregroundColor(.red)
        }
    }
}

#Preview {
    NavigationBar()
        .previewLayout(.sizeThatFits)
        .padding()
}
