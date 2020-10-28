//
//  Coin.swift
//  CoinTrackerDemo
//
//  Created by Lora Kucher on 28.10.2020.
//  Copyright © 2020 LK. All rights reserved.
//

import Foundation

struct Coin: Decodable {
    let name: String
    let price: String
    let symbol: String
    let color: String
    let change: Double
    let history: [String]
}
