//
//  RatesApi.swift
//  ExchangeRates
//
//  Created by Eduardo Mausa on 20/09/23.
//

import Foundation

enum HttpMethod: String {
    case get = "GET"
}

struct RatesApi {
    
    static let baseUrl = "https://api.apilayer.com/exchangerates_data"
    static let apiKey = "veDjUwPqvmI03y2wWA1OvUnPgyQYzsLo"
    static let fluctuation = "/fluctuation"
    static let symbols = "/symbols"
    static let timeseries = "/timeseries"
}
