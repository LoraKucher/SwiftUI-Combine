//
//  CoinListViewModel.swift
//  CoinTrackerDemo
//
//  Created by Lora Kucher on 28.10.2020.
//  Copyright © 2020 LK. All rights reserved.
//

import Foundation
import Combine

class CoinListViewModel: ObservableObject {
    
    @Published var coins = [CoinViewModel]()
    
    private let coinSevice = CoinSevice()
    
    var cancellable: AnyCancellable?
    
    func getCoins() {
        guard let getCoins = coinSevice.getCoins() else {
            print("no data")
            return
        }
        
        cancellable = getCoins.sink(receiveCompletion: { err in
            print(err)
        }) { coinRes in
            self.coins = coinRes.data.coins.map { CoinViewModel($0) }
        }
    }
}
