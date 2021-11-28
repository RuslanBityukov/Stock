//
//  DetailedPaperInformationViewController.swift
//  Stock
//
//  Created by Руслан Битюков on 28.11.2021.
//

import UIKit

class DetailedPaperInformationViewController: UIViewController {
    
    @IBOutlet weak var stockImageView: UIImageView!
    
    @IBOutlet weak var stockNameLabel: UILabel!
    @IBOutlet weak var valueLabel: UILabel!
    
    
     var quotes: Quote!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        stockImageView.layer.cornerRadius = 25
        
        
        stockImageView.image = UIImage(named: quotes.symbol ?? "")
        stockNameLabel.text =  quotes.longName
        valueLabel.text = "\(String(quotes.regularMarketOpen)) - \(quotes.financialCurrency ?? "") "
    }
    

   
}
