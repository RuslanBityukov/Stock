//
//  CurrencyTableViewCell.swift
//  Stock
//
//  Created by Руслан Битюков on 28.11.2021.
//

import UIKit

class CurrencyTableViewCell: UITableViewCell {

    @IBOutlet weak var stocksImageView: UIImageView!
    @IBOutlet weak var currentLabel: UILabel!
    @IBOutlet weak var valueLabel: UILabel!
    
    
    
    func configureCellFor(_ character: Quote) {
        currentLabel.text = character.longName
        valueLabel.text = character.symbol
        stocksImageView.image = UIImage(named: character.symbol ?? "")
        stocksImageView.layer.cornerRadius = 25
    }
    
    
}


