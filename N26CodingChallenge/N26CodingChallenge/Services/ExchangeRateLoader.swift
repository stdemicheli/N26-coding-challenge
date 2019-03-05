//
//  ExchangeRateLoader.swift
//  N26CodingChallenge
//
//  Created by De MicheliStefano on 02.03.19.
//  Copyright © 2019 De MicheliStefano. All rights reserved.
//

import Foundation

/**
 A loader service for loading data to be displayed on the exchange rate list and detail views.
 */

/// Note that the loader plays a rather insignificant role here but we set it up in order to easily extend it with other data sources (e.g. local persistence).
class ExchangeRateLoader: LoaderProtocol {
    
    // MARK: - Properties
    
    internal let api: APIProtocol
    
    // MARK: - Init
    
    init(api: APIProtocol) {
        self.api = api
    }
    
    // MARK: - Exchange rate loader
    
    func loadCurrentRate(completion: @escaping (Response<CurrentRate>) -> ()) {
        api.loadCurrentRates { (response) in
            completion(response)
        }
    }
    
    func loadHistoricalRates(completion: @escaping (Response<HistoricalRates>) -> ()) {
        api.loadHistoricalRates() { (response) in
            completion(response)
        }
    }
    
}
