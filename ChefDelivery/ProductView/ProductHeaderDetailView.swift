//
//  ProductHeaderDetailView.swift
//  ChefDelivery
//
//  Created by Leandro Morais on 15/11/23.
//

import SwiftUI

struct ProductHeaderDetailView: View {
    
    let product: ProductType
    @Environment(\.colorScheme) var colorScheme
    @State private var productQuantity = 1
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Image(product.image)
                .resizable()
                .scaledToFit()
                //.cornerRadius(5.0)
                //.shadow(color: colorScheme == .light ? Color(.black).opacity(0.5) : Color(.gray).opacity(0.5), radius: 10, x: 0, y: 3)
                //.padding()
            
            Text(product.name)
                .font(.title)
                .bold()
                .padding(.horizontal)
                .padding(.top)
            
            Text(product.description)
                .padding(.horizontal)
                .font(.headline)
            
            Text(product.formattedPrice)
                .font(.title2)
                .bold()
                .padding(.horizontal)
        }  
    }
}


#Preview {
    ProductHeaderDetailView(product: storesMock[0].products[0])
}
