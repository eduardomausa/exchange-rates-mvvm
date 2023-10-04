//
//  MultiCurrenciesFilterViewModel.swift
//  ExchangeRates
//
//  Created by Eduardo Mausa on 03/10/23.
//

import Foundation
import SwiftUI

extension MultiCurrenciesFilterView {
    
    @MainActor class ViewModel: ObservableObject, CurrencySymbolsDataProviderDelegate {
        @Published var currencySymbols = [CurrencySymbolModel]()
        
        private let dataProvider: CurrencySymbolsDataProvider?
        
        init(dataProvider: CurrencySymbolsDataProvider = CurrencySymbolsDataProvider()) {
            self.dataProvider = dataProvider
            self.dataProvider?.delegate = self
        }
        
        func doFetchCurrencySymbols() {
            dataProvider?.fetchSymbols()
        }
        
        nonisolated func success(model: [CurrencySymbolModel]) {
            DispatchQueue.main.async {
                withAnimation {
                    self.currencySymbols = model.sorted { $0.symbol < $1.symbol  }
                }
            }
        }
    }
}
