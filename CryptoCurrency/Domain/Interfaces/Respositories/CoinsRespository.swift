//
//  CoinsRespository.swift
//  CryptoCurrency
//
//  Created by Prabhdeep Singh on 20/01/21.
//  Copyright © 2021 Prabhdeep. All rights reserved.
//

import Foundation
import Combine

protocol CoinsRepository {
    func fetchCoins() -> AnyPublisher<CoinDTO, Error>
}
