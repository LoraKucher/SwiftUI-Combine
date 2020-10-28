//
//  CoinResponse.swift
//  CoinTrackerDemo
//
//  Created by Lora Kucher on 28.10.2020.
//  Copyright © 2020 LK. All rights reserved.
//

import Foundation

struct CoinResponse: Decodable {
    let status: String
    let data: CoinData
}
