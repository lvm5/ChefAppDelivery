//
//  ProductQuantityDetailView.swift
//  ChefDelivery
//
//  Created by Leandro Morais on 15/11/23.
//

import SwiftUI

struct ProductQuantityDetailView: View {
    
    //let product: ProductType
    @Environment(\.colorScheme) var colorScheme
    @Binding var productQuantity: Int
    
    var body: some View {
        VStack(spacing: 16) {
            Text("Quantidade")
                .font(.title3)
                .bold()
            
            HStack {
                Button {
                    if productQuantity > 1 {
                        productQuantity -= 1}
                } label: {
                    Image(systemName: "minus.circle.fill")
                        .font(.title)
                        .bold()
                        .foregroundColor(.red)
                        .padding(.horizontal, 30)
                }
                
                Text("\(productQuantity)")
                    .font(.title2)
                    .bold()
                    .foregroundColor(colorScheme == .light ? .black : .white)
                
                Button {
                    productQuantity += 1
                } label: {
                    Image(systemName: "plus.circle.fill")
                        .font(.title)
                        .bold()
                        .foregroundColor(.red)
                        .padding(.horizontal, 30)
                }
            }
        }
    }
}

#Preview {
    ProductQuantityDetailView(productQuantity: .constant(1))
}
