//
//  NetworkManager.swift
//  Stock
//
//  Created by Руслан Битюков on 28.11.2021.
//

import Foundation

class NetworkManager {
    static let shared = NetworkManager()
    
    func fetchData(from url: String?, with completion: @escaping(Stock) -> Void) {
        guard let stringURL = url else { return }
        guard let url = URL(string: stringURL) else { return }
        
        URLSession.shared.dataTask(with: url) { data, _, error in
            guard let data = data else {
                print(error?.localizedDescription ?? "No error description")
                return
            }
            do {
                let stock = try JSONDecoder().decode(Stock.self, from: data)
                DispatchQueue.main.async {
                    completion(stock)
                }
            } catch let error {
                print(error)
            }
            
        }.resume()
    }
    
    private init() {}
}

