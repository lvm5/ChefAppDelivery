//
//  Double+.swift
//  ChefDelivery
//
//  Created by Leandro Morais on 13/11/23.
//

import Foundation

 //ENSINADO NO CURSO DA ALURA
extension Double {
    func formatPrice() -> String {
        let formattedString = String(format: "%.2f", self) //Formatação da String com retorno de apenas 2 casas decimais e usar o self pois é a instancia de Double
        return formattedString.replacingOccurrences(of: ".", with: ",") // substituição de ponto decimal para virgula decimal
    }
}


// OUTRA FORMA DE SUBSTUITUIR PONTO POR VIRGULA DECIMAL.
//extension Double {
//    func formatPrice() -> String {
//        
//        
//        let locale = Locale(identifier: "pt-BR") //  localidade declarada
//
//        _ = String(format: "%.2f") // CONVERSÃO
//        
//        return "R$ " + String(format: "%.2f", locale: locale, self)
//    }
//}
