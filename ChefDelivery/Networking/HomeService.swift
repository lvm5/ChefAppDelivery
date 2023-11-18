//
//  HomeService.swift
//  ChefDelivery
//
//  Created by Leandro Morais on 16/11/23.
//

import Foundation


enum RequestError: Error {
    case invalidURL
    case errorRequest(error: String)
}

struct HomeService {
    
    func fetchData() async  throws -> Result<[StoreType], RequestError>{
        guard let url = URL(string: "https://private-6fbc65-leandrovansandemorais.apiary-mock.com/home") else {
            return .failure(.invalidURL)
        }
        
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        
        let (data, _) = try await URLSession.shared.data(for: request)
        let storesObject = try JSONDecoder().decode([StoreType].self, from: data)
        
        return .success(storesObject)
    }
}
