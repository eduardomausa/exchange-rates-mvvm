//
//  CurrencySymbolModel.swift
//  ExchangeRates
//
//  Created by Eduardo Mausa on 03/10/23.
//

import Foundation

struct CurrencySymbolModel: Identifiable {
    let id = UUID()
    var symbol: String
    var fullName: String
}
