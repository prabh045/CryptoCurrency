//
//  CoinViewModel.swift
//  CryptoCurrency
//
//  Created by Prabhdeep Singh on 20/01/21.
//  Copyright © 2021 Prabhdeep. All rights reserved.
//

import Foundation

struct CoinViewModel: Hashable {
    private let coin: CoinModel
    
    init(coin: CoinModel) {
        self.coin = coin
    }
    
    var name: String {
        return coin.name
    }
    
    var price: String {
        return coin.price
    }
}
