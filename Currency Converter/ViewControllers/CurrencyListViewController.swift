//
//  ViewController.swift
//  Currency Converter
//
//  Created by Андрей Поморцев on 08.04.2022.
//

import UIKit

class CurrencyListViewController: UITableViewController {
    
    private var currency: Currency?
    private let url = "https://www.cbr-xml-daily.ru/daily_json.js"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fetchData(from: url)
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        currency?.getValute().count ?? 0
        
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(
            withIdentifier: "currency",
            for: indexPath) as? CurrencyCell else { return UITableViewCell()}
        guard let valute = currency?.getValute()[indexPath.row] else { return UITableViewCell()}
        cell.configure(with: valute)
        return cell
    }
    
    private func fetchData(from url: String) {
        NetworkService.shared.requestData(from: url) { currency in
            self.currency = currency
            self.tableView.reloadData()
        }
    }
}

