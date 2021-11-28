//
//  StockTableViewController.swift
//  Stock
//
//  Created by Руслан Битюков on 26.11.2021.
//

import UIKit

class StockTableViewController: UITableViewController {
    
    private var stock: Stock?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 90
        fetchData(from: Link.stock.rawValue)
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        stock?.quotes.count ?? 0
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CurrencyTableViewCell
        
        let character = stock?.quotes[indexPath.row]
        cell.configureCellFor(character!)
        //var content = cell.defaultContentConfiguration()
        
        
        //content.text = character?.longName
        //content.secondaryText = character?.symbol
        //cell.contentConfiguration = content
        return cell
    }
    
    private func fetchData(from url: String?) {
        NetworkManager.shared.fetchData(from: url) { stock in
            self.stock = stock
            self.tableView.reloadData()
        }
    }

    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        
        let character = stock?.quotes[indexPath.row]
        let detailVC = segue.destination as! DetailedPaperInformationViewController
        detailVC.quotes = character
    }
}
