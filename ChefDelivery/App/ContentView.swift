//
//  ContentView.swift
//  ChefDelivery
//
//  Created by Leandro Morais on 09/11/23.
//

import SwiftUI

struct ContentView: View {
    
    //MARK: -- ATTRIBUTES
    
    private var service = HomeService()
    @State private var storesType: [StoreType] = []
     
    //MARK: -- VIEW
    
    var body: some View {
        NavigationView {
            VStack {
                NavigationBar()
                    .padding(.horizontal, 15)
                
                ScrollView(.vertical, showsIndicators: true) {
                    VStack(spacing: 20) {
                        OrderTypeGridView()
                        CarouselTabView()
                        StoresContainerView()
                    }
                }
            }
        }
        .onAppear {
            Task {
                await getStores()
            }
            
        }
    }
    // MARK: -- Methods
    func getStores() async {
        do {
            let result = try await service.fetchData()
            switch result {
            case .success(let stores):
                self.storesType = stores
            case .failure(let error):
                print(error.localizedDescription)
            }
        } catch {
            print(error.localizedDescription)
        }
    }
}

#Preview {
    ContentView()
}
