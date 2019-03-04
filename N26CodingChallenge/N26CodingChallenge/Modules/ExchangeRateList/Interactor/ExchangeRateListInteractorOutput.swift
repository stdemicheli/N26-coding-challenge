//
//  ExchangeRateInteractorOutput.swift
//  N26CodingChallenge
//
//  Created by De MicheliStefano on 02.03.19.
//  Copyright © 2019 De MicheliStefano. All rights reserved.
//

protocol ExchangeRateListInteractorOutput: class {
    typealias RateViewModel = (rate: String, symbol: String)
    func updateExchangeRates()
}
