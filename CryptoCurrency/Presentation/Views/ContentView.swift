//
//  ContentView.swift
//  CryptoCurrency
//
//  Created by Prabhdeep Singh on 20/01/21.
//  Copyright © 2021 Prabhdeep. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject private var coinListViewModel = CoinListViewModel(coinRepo: FetchCoinsRepository())
    
    var body: some View {
        List {
            Section(header: Text("Crypto Currencies").font(.headline)) {
                ForEach(coinListViewModel.coinViewModels, id: \.self) { viewModel in
                        CoinRow(coinViewModel: viewModel)
                }
            }
        }
        .onAppear {
            self.coinListViewModel.fetchCoins()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
