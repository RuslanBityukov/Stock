//
//  DetailedPaperInformationViewController.swift
//  Stock
//
//  Created by Руслан Битюков on 28.11.2021.
//

import UIKit

class DetailedPaperInformationViewController: UIViewController {
    
    @IBOutlet weak var stockNameLabel: UILabel!
    @IBOutlet weak var valueLabel: UILabel!
    @IBOutlet weak var currentLabel: UILabel!
    
     var quotes: Quote!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        stockNameLabel.text =  quotes.longName
        valueLabel.text = String(quotes.regularMarketOpen)
        currentLabel.text = quotes.financialCurrency
    }
}
