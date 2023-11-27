//
//  ProductDetailAddToCart.swift
//  ChefDelivery
//
//  Created by Leandro Morais on 15/11/23.
//

import SwiftUI

struct ProductDetailAddToCart: View {
    
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        Button {
            print("Botão pressionado")
        } label: {
            HStack {
                Image(systemName: "cart")
                Text("Enviar pedido")
            }
            .padding(.horizontal, 32)
            .padding(.vertical, 16)
            .font(.title2)
            .bold()
            .background(Color(Color.red))
            .foregroundColor(.white)
            .cornerRadius(32)
            .shadow(color: colorScheme == .light ? Color(.black).opacity(0.5) : Color(.gray).opacity(0.5), radius: 10, x: 6, y: 8)
        }
        .padding(.bottom, 32)
    }
}

#Preview {
    ProductDetailAddToCart()
}
