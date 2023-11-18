//
//  StoreDetailItemView.swift
//  ChefDelivery
//
//  Created by Leandro Morais on 15/11/23.
//

import SwiftUI

struct StoreDetailProductItemView: View {
    
    let product: ProductType
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        HStack(spacing: 8) {
            VStack(alignment: .leading, spacing: 8) {
                Text(product.name)
                    .bold()
                
                Text(product.description)
                    .foregroundColor(.gray)
                    .multilineTextAlignment(.leading)
                
                Text(product.formattedPrice)
                    .bold()
            }
            
            Spacer()
            
            Image(product.image)
                .resizable()
                .scaledToFit()
                .cornerRadius(12.0)
                .frame(width: 120, height: 120)
                .shadow(color: colorScheme == .light ? Color(.black).opacity(0.5) : Color(.gray).opacity(0.5), radius: 10, x: 6, y: 8)
        }
        .padding()
        .foregroundColor(colorScheme == .light ? .black : .white)
    }
}

#Preview {
    StoreDetailProductItemView(product: storesMock[0].products[0])
}
