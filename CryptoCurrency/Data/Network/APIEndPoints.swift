//
//  APIEndPoints.swift
//  CryptoCurrency
//
//  Created by Prabhdeep Singh on 20/01/21.
//  Copyright © 2021 Prabhdeep. All rights reserved.
//

import Foundation

struct APIEndPoints {
    static func getCoins() -> EndPoint {
        return EndPoint(path: "https://api.coinranking.com/v2/coins")
    }
}
