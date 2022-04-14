//
//  NetworkDataFetcher.swift
//  Currency Converter
//
//  Created by Андрей Поморцев on 09.04.2022.
//

import Foundation

//class NetworkDataFetcher {
//    
//    private let networkService = NetworkService()
//    
//    func fetchCurrency(from url: String, response: @escaping ([Valute]?) -> ()) {
//        networkService.requestData(from: url) { data, error in
//            guard let data = data else { return }
//            do {
//                let currency = try JSONDecoder().decode(Currency.self, from: data)
//                //Массив для передачи данных в tableView
//                var valutes: [Valute] = []
//                for valute in currency.Valute.values {
//                    valutes.append(valute)
//                }
//                response(valutes)
//            } catch let error {
//                print("Failed to decode JSON", error)
//                response(nil)
//            }
//        }
//    }
//}
