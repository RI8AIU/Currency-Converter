//
//  Currency.swift
//  Currency Converter
//
//  Created by Андрей Поморцев on 08.04.2022.
//

struct Currency: Decodable {
    let Valute: [String: Valute]


    func getValute() -> [Valute] {
        var valute: [Valute] = []
        for value in self.Valute.values {
            valute.append(value)
        }
       return valute
    }
}

struct Valute: Decodable {
    let Value: Double
    let Previous: Double
    let Nominal: Int
    let Name: String
    let CharCode: String

}

