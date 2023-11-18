//
//  StoresContainerView.swift
//  ChefDelivery
//
//  Created by Leandro Morais on 10/11/23.
//

import SwiftUI

struct StoresContainerView: View {
    
    let title = "Lojas"
    
    //MARK: FILTRO DE RESTAURANTES
    @State private var ratingFilter = 0
    var filteredStores: [StoreType] {
        return storesMock.filter { store in
            store.stars >= ratingFilter
        }
    }
    
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        VStack(alignment: .leading) {
            
            HStack {
                Text(title)
                    .font(.title2)
                    .bold()
                    .padding(15)
                
                Spacer()
                
                Menu("Filtrar") {
                    
                    Button {
                        ratingFilter = 0
                    } label: {
                        Text("Limpar filtro")
                    }
                    
                    Divider()
                    
                    
                    ForEach(1...5, id: \.self) { rating in
                        Button {
                            ratingFilter = rating
                        } label: {
                            if rating > 1 {
                                Text("\(rating)  estrelas ou mais")
                            } else {
                                Text("\(rating)  estrela ou mais")
                            }
                        }
                    }
                }
                .foregroundColor(colorScheme == .light ? .black.opacity(0.7) : .white.opacity(0.7))
            }
            
            VStack(alignment: .leading, spacing: 30) {
                if filteredStores.isEmpty {
                    Text("Nenhum resultado encontrado")
                        .font(.title2)
                        .bold()
                        .foregroundColor(.red)
                        .padding(.vertical, 32)
                        .frame(maxWidth: .infinity)
                } else {
                    ForEach(filteredStores) { mock in
                        NavigationLink {
                            StoreDetailView(store: mock)
                        } label: {
                            StoreItemView(store: mock)
                        }
                    }
                }
            }
            .foregroundColor(colorScheme == .light ? .black : .white)
        }
        .padding(20)
    }
}

#Preview {
    StoresContainerView()
        .previewLayout(.sizeThatFits)
}
