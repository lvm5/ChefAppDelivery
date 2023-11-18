//
//  ProductDetailView.swift
//  ChefDelivery
//
//  Created by Leandro Morais on 14/11/23.
//

import SwiftUI

struct ProductDetailView: View {
    
    let product: ProductType
    @Environment(\.colorScheme) var colorScheme
    @State private var productQuantity = 1
    
    
    var body: some View {
        VStack {
            ProductHeaderDetailView(product: product)
            Spacer()
            ProductQuantityDetailView(productQuantity: $productQuantity)
            Spacer()
            ProductDetailAddToCart()
        }
    }
}

    #Preview {
        ProductDetailView(product: storesMock[0].products[0])
    }
