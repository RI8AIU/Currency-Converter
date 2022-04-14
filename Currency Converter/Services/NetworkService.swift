//
//  NetworkService.swift
//  Currency Converter
//
//  Created by Андрей Поморцев on 08.04.2022.
//

import Foundation


class NetworkService {
    
    static let shared = NetworkService()
    
    private init() {}
    
    func requestData(from url: String, completionHandler: @escaping(Currency) -> Void) {
        guard let url = URL(string: url) else { return }
        
        URLSession.shared.dataTask(with: url) { data, _, error in
            
            guard let data = data else {
                print(error?.localizedDescription ?? "Нет описания ошибки")
                return
            }
            do {
                let currency = try JSONDecoder().decode(Currency.self, from: data)
                DispatchQueue.main.async {
                    completionHandler(currency)
                }
            } catch let error {
                print("Ошибка извлечения данных:", error)
                return
            }
        }.resume()
    }
}



