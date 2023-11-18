//
//  StoreDetailProductView.swift
//  ChefDelivery
//
//  Created by Leandro Morais on 15/11/23.
//

import SwiftUI

struct StoreDetailProductView: View {
    
    let products: [ProductType]
    
    @State private var selectedproduct: ProductType?
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Produtos")
                .font(.title2)
                .bold()
                .padding()
            
            ForEach(products) { product in
                
                Button {
                    selectedproduct = product
                } label: {
                    StoreDetailProductItemView(product: product)
                }
                .sheet(item: $selectedproduct) { product in
                    ProductDetailView(product: product)
                }
            }
        }
    }
}

#Preview {
    StoreDetailProductView(products: storesMock[0].products)
}
