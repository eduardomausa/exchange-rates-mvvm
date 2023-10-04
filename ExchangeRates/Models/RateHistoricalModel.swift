//
//  RateHistoricalModel.swift
//  ExchangeRates
//
//  Created by Eduardo Mausa on 03/10/23.
//

import Foundation

struct RateHistoricalModel: Identifiable {
    let id = UUID()
    var symbol: String
    var period: Date
    var endRate: Double
}
