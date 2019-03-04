//
//  ExchangeRateInteractorInput.swift
//  N26CodingChallenge
//
//  Created by De MicheliStefano on 02.03.19.
//  Copyright © 2019 De MicheliStefano. All rights reserved.
//

import Foundation

protocol ExchangeRateListInteractorInput: class {
    var output: ExchangeRateListInteractorOutput! { get set }
    var dataLoader: LoaderProtocol! { get set }
    var rates: [ExchangeRateListInteractorOutput.RateViewModel] { get set }
//    var currentRate: CurrentRate { get set }
//    var historicalRates: HistoricalRates { get set }
    
    func getExchangeRates()
    func numberOfExchangeRates() -> Int
    func getExchangeRate(at indexPath: IndexPath) -> ExchangeRateListInteractorOutput.RateViewModel
}
