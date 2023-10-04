//
//  RateFluctuationModel.swift
//  ExchangeRates
//
//  Created by Eduardo Mausa on 03/10/23.
//

import Foundation

struct RateFluctuationModel: Identifiable {
    let id = UUID()
    var symbol: String
    var change: Double
    var changePct: Double
    var endRate: Double
}
