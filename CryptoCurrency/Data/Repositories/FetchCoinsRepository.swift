//
//  FetchCoinsRepository.swift
//  CryptoCurrency
//
//  Created by Prabhdeep Singh on 20/01/21.
//  Copyright © 2021 Prabhdeep. All rights reserved.
//

import Foundation
import Combine

final class FetchCoinsRepository: CoinsRepository {
    
    func fetchCoins() -> AnyPublisher<CoinDTO, Error>{
        let endPoint = APIEndPoints.getCoins()
        guard let url = URL(string: endPoint.path) else {fatalError()}
        
        //TODO: Replace URLSession with DI
        return URLSession.shared.dataTaskPublisher(for: url)
            .map { $0.data }
            .decode(type: CoinDTO.self, decoder: JSONDecoder())
            .receive(on: DispatchQueue.main)
            .eraseToAnyPublisher()
    }
}
