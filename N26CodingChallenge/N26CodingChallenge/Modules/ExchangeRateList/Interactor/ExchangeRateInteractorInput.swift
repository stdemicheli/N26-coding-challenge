//
//  ExchangeRateInteractorInput.swift
//  N26CodingChallenge
//
//  Created by De MicheliStefano on 02.03.19.
//  Copyright © 2019 De MicheliStefano. All rights reserved.
//

import Foundation

protocol ExchangeRateInteractorInput {
    var output: ExchangeRateInteractorOutput! { get set }
    var currentRate: CurrentRate { get set }
    var historicalRates: HistoricalRates { get set }
    
    func getExchangeRates()
    func numberOfExchangeRates()
    func getExchangeRate(at indexPath: IndexPath) -> CurrentRate
}
