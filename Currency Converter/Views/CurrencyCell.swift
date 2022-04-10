//
//  CurrencyCell.swift
//  Currency Converter
//
//  Created by Андрей Поморцев on 10.04.2022.
//

import UIKit

class CurrencyCell: UITableViewCell {
    
    @IBOutlet var charCodeLabel: UILabel!
    @IBOutlet var nominalLabel: UILabel!
    @IBOutlet var nameCurrencyLabel: UILabel!
    @IBOutlet var valueCurrencyLabel: UILabel!
    @IBOutlet var previousCurrencyLabel: UILabel!
    @IBOutlet var flagImage: UIImageView!
    
    func configure(with currency: Valute) {
        charCodeLabel.text = currency.CharCode
        nominalLabel.text = String(currency.Nominal)
        nameCurrencyLabel.text = currency.Name
        valueCurrencyLabel.text = String(currency.Value)
        previousCurrencyLabel.text = String(currency.Previous)
        flagImage.image = UIImage(named: currency.CharCode)
    }
}
