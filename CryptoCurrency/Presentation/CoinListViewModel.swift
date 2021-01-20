//
//  CoinListViewModel.swift
//  CryptoCurrency
//
//  Created by Prabhdeep Singh on 20/01/21.
//  Copyright © 2021 Prabhdeep. All rights reserved.
//

import Foundation
import Combine

class CoinListViewModel: ObservableObject {
    //Basically representing each row on our screen
    @Published var coinViewModels = [CoinViewModel]()
    private var coinRepo: CoinsRepository
    var cancellable = Set<AnyCancellable>()
    
    init(coinRepo: CoinsRepository) {
        self.coinRepo = coinRepo
    }
    
}

extension CoinListViewModel: FetchCoinsUseCase {
    func fetchCoins() {
        coinRepo.fetchCoins().sink(receiveCompletion: { (_) in
            //Do something if its success or failure
        }) { (coindto) in
            self.coinViewModels = coindto.data.coins.map({ (coin) in
                CoinViewModel(coin: coin)
            })
            print(self.coinViewModels)
        }.store(in: &cancellable)
    }
    
}
