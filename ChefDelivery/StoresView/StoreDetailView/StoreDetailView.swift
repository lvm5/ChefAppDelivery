//
//  StoresDetailView.swift
//  ChefDelivery
//
//  Created by Leandro Morais on 10/11/23.
//

import SwiftUI

struct StoreDetailView: View {
    
    let store: StoreType
    
    @Environment(\.colorScheme) var colorScheme
    @Environment(\.presentationMode) var presentationMode //modo de apresentação de uma tela
    @State private var selectedproduct: ProductType?
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(alignment: .leading) {
                Image(store.headerImage)
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(8.0)
                
                HStack {
                    Text(store.name)
                        .font(.title)
                        .bold()
                    
                    Spacer()
                    
                    Image(store.logoImage)
                    
                }
                .padding(.vertical, 8)
                .padding(.horizontal)
                
                HStack {
                    Text(store.location)
                    
                    Spacer()
                    
                    ForEach(1...store.stars, id: \.self) { _ in
                        Image(systemName: "star.fill")
                            .foregroundColor(.yellow)
                            .font(.caption)
                    }
                }
                .padding(.vertical, 8)
                .padding(.horizontal)
                
                Text("Produtos")
                    .font(.title2)
                    .bold()
                    .padding()
                
                ForEach(store.products) { product in
                    
                    Button {
                        selectedproduct = product
                    } label: {
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
                    .sheet(item: $selectedproduct) { product in
                        ProductDetailView(product: product)
                    }
                }
            }
            .navigationTitle(store.name)
            .navigationBarTitleDisplayMode(.inline)
            //MARK: -- CRIAR UM BOTAO PERSONALIZADO NO TOP PARA VOLTAR
//            .navigationBarBackButtonHidden() // esconder o botão voltar padrão do SwiftUi que usa em ingles o termo BACK
//            .toolbar { //inserir uma barra de toolbar
//                ToolbarItem(placement: .navigationBarLeading) {
//                    Button {
//                        presentationMode.wrappedValue.dismiss() //liberar a tela para voltar a anterior
//                    } label: {
//                        HStack(spacing: 4) {
//                            Image(systemName: "cart")
//                            Text("Lojas")
//                        }
//                        .foregroundColor(colorScheme == .light ? .black : .white)
//                    }
//                }
//            }
        }
    }
}

#Preview {
    StoreDetailView(store: storesMock[0])
}
