//
//  StoresDetailView.swift
//  ChefDelivery
//
//  Created by Leandro Morais on 10/11/23.
//

import SwiftUI

struct StoreDetailView: View {
    
    let store: StoreType
    @Environment(\.presentationMode) var presentationMode //modo de apresentação de uma tela
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(alignment: .leading) {
                
                StoreDetailHeaderView(store: store)
                StoreDetailProductView(products: store.products)
            }
            .navigationTitle(store.name)
            .navigationBarTitleDisplayMode(.inline)
            
            
            //MARK: -- CRIAR UM BOTAO PERSONALIZADO NO TOP PARA VOLTAR
            .navigationBarBackButtonHidden() // esconder o botão voltar padrão do SwiftUi que usa em ingles o termo BACK
            .toolbar { //inserir uma barra de toolbar
                ToolbarItem(placement: .navigationBarLeading) {
                    Button {
                        presentationMode.wrappedValue.dismiss() //liberar a tela para voltar a anterior
                        
                    } label: {
                        HStack(spacing: 4) {
                            //Image(systemName: "cart")
                            Text("<< Lojas")
                        }
                        .foregroundColor(.red)
                        //.foregroundColor(colorScheme == .light ? .black : .white)
                    }
                }
            }
        }
    }
}

#Preview {
    StoreDetailView(store: storesMock[0])
}
