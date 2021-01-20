//
//  CoinDTO.swift
//  CryptoCurrency
//
//  Created by Prabhdeep Singh on 20/01/21.
//  Copyright © 2021 Prabhdeep. All rights reserved.
//

import Foundation

struct CoinDTO: Decodable {
    let status: String
    let data: CoinData
}

struct CoinData: Decodable {
    let coins: [CoinModel]
}
