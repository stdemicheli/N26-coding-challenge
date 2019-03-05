//
//  CryptoCurrency.swift
//  N26CodingChallenge
//
//  Created by De MicheliStefano on 02.03.19.
//  Copyright © 2019 De MicheliStefano. All rights reserved.
//

import Foundation

/**
 An exchange rate model which represents a crypto currency parsed from a JSON object.
 */

struct CurrentRate: Codable {
    
    let rates: [FiatCurrencyTypes.RawValue: ExchangeRate]
    
    enum CodingKeys: String, CodingKey {
        case rates = "bpi"
    }
    
    struct ExchangeRate: Codable {
        let code: FiatCurrencyTypes.RawValue
        let symbol: String
        let rate: Float
        let description: String
        
        enum CodingKeys: String, CodingKey {
            case code
            case symbol
            case rate = "rate_float"
            case description
        }
    }
    
}

struct HistoricalRates: Codable {
    
    let rates: [String: Float]
    
    enum CodingKeys: String, CodingKey {
        case rates = "bpi"
    }
    
}

enum CryptoCurrencyTypes: String {
    case BTC
}

enum FiatCurrencyTypes: String {
    case EUR, USD, GBP
}
