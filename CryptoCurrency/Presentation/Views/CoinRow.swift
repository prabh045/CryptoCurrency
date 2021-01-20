//
//  CoinRow.swift
//  CryptoCurrency
//
//  Created by Prabhdeep Singh on 20/01/21.
//  Copyright © 2021 Prabhdeep. All rights reserved.
//

import SwiftUI

struct CoinRow: View {
    var coinViewModel: CoinViewModel
    
    var body: some View {
        HStack {
            Text(coinViewModel.name)
                .font(.system(size: 16))
                .fontWeight(.bold)
            
            Spacer()
            
            Text(coinViewModel.price)
                .font(.system(size: 14))
                .foregroundColor(Color.gray)
        }
    }
}

struct CoinRow_Previews: PreviewProvider {
    static let coinModel = CoinModel(name: "BitCoin", price: "35000")
    static let coinviewModel = CoinViewModel(coin: coinModel)
    static var previews: some View {
        CoinRow(coinViewModel: coinviewModel)
    }
}
