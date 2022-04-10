//
//  ViewController.swift
//  Currency Converter
//
//  Created by Андрей Поморцев on 08.04.2022.
//

import UIKit

class CurrencyListViewController: UITableViewController {
    
    private let networkDataFetcher = NetworkDataFetcher()
    private var valute: [Valute] = []
    private let url = "https://www.cbr-xml-daily.ru/daily_json.js"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        networkDataFetcher.fetchCurrency(from: url) { currency in
            guard let currency = currency else { return }
            self.valute = currency
            self.tableView.reloadData()
            self.tableView.rowHeight = 110
        }
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return valute.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "currency", for: indexPath) as? CurrencyCell else { return UITableViewCell()}
        let valute = valute[indexPath.row]
        cell.configure(with: valute)
        return cell
    }
}

