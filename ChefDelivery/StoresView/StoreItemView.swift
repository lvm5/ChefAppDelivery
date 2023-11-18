//
//  StoreItemView.swift
//  ChefDelivery
//
//  Created by Leandro Morais on 09/11/23.
//

import SwiftUI

struct StoreItemView: View {
    
    let store: StoreType
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        HStack {
            Image(store.logoImage)
                .resizable()
                .scaledToFit()
                .cornerRadius(25)
                .frame(width: 50, height: 50)
            
            VStack {
                Text(store.name)
                    .font(.title3)
                    .bold()
                    .shadow(color: colorScheme == .light ? Color(.black).opacity(0.5) : Color(.gray).opacity(0.5), radius: 10, x: 6, y: 8)
            }
            Spacer()
        }
    }
}

#Preview {
    StoreItemView(store: storesMock[0])
        .previewLayout(.sizeThatFits)
}
