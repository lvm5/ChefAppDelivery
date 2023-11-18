//
//  StoreDetailItemView.swift
//  ChefDelivery
//
//  Created by Leandro Morais on 15/11/23.
//

import SwiftUI

struct StoreDetailItemView: View {
    
    let product: ProductType
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        HStack(spacing: 8) {
            VStack(alignment: .leading, spacing: 8) {
                Text(product.name)
                    .bold()
                
                Text(product.description)
                //.foregroundColor(.black.opacity(0.5))
                    .foregroundColor(.gray)
                    .multilineTextAlignment(.leading)
                
                Text(product.formattedPrice)
            }
            
            Spacer()
            
            Image(product.image)
                .resizable()
                .scaledToFit()
                .cornerRadius(12.0)
                .frame(width: 120, height: 120)
            //.shadow(color: (colorScheme).white.opacity(0.3),radius: 20, x: 6, y: 8)
        }
        .padding()
        .foregroundColor(colorScheme == .light ? .black : .white)
    }
}

#Preview {
    StoreDetailItemView(product: storesMock[0].products[0])
}
