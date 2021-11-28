//
//  Stock.swift
//  Stock
//
//  Created by Руслан Битюков on 26.11.2021.
//

import Foundation

// MARK: - Welcome
struct Stock: Codable {
    let quotes: [Quote]
}

// MARK: - Quote
struct Quote: Codable {
    let longName: String?
    let financialCurrency: String?
    let symbol: String?
    let displayName: String?
    let messageBoardId: String?
    let regularMarketOpen: Double
    
   
}

enum Link: String {
    case stock = "https://mboum.com/api/v1/co/collections/?list=day_gainers&start=1&apikey=l5q2l5xDXjIn5qhy5IUzeEZBTCJXDIOvpeBOOXTF6whBWcpttDSJGlHgNour"
}

