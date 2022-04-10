//
//  NetworkService.swift
//  Currency Converter
//
//  Created by Андрей Поморцев on 08.04.2022.
//

import Foundation
class NetworkService {
    func requestData(from url: String, completionHandler: @escaping (Data?, Error?) -> ()) {
        
        guard let url = URL(string: url) else { return }
        
        URLSession.shared.dataTask(with: url) { data, _, error in
            DispatchQueue.main.async {
                guard let data = data else {
                    print(error?.localizedDescription ?? "No error description")
                    return
                }
                completionHandler(data, nil)
            }
            
        }.resume()
    }
    
}





