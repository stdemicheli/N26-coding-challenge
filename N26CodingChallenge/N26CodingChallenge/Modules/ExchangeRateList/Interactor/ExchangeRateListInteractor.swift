//
//  ExchangeRateListInteractor.swift
//  N26CodingChallenge
//
//  Created by De MicheliStefano on 03.03.19.
//  Copyright © 2019 De MicheliStefano. All rights reserved.
//

import Foundation

class ExchangeRateListInteractor: ExchangeRateListInteractorInput {
    
    weak var output: ExchangeRateListInteractorOutput!
    var dataLoader: LoaderProtocol!
    var rates = [ExchangeRateListInteractorOutput.RateViewModel]()
    
    func getExchangeRates() {
        let dispatchGroup = DispatchGroup()
        
        dispatchGroup.enter()
        dataLoader.loadCurrentRate { [weak self] (response) in
            switch response {
            case .success(let currentRate):
                let rate = (rate: String(currentRate.rates.first?.value.rate ?? 0.0), symbol: currentRate.rates.first?.value.symbol ?? "")
                self?.rates.append(rate)
            case .error(let error):
                self?.output.handleError(with: error)
            }
            dispatchGroup.leave()
        }
        
        dispatchGroup.enter()
        dataLoader.loadHistoricalRates() { [weak self] (response) in
            switch response {
            case .success(let historicalRate):
                let rates = historicalRate.rates.values.map { (rate: String($0), symbol: "USD") }
                self?.rates.append(contentsOf: rates)
            case .error(let error):
                self?.output.handleError(with: error)
            }
            dispatchGroup.leave()
        }
        
        dispatchGroup.notify(queue: .main) { [weak self] in
            self?.output.updateExchangeRates()
        }
    }
    
    func numberOfExchangeRates() -> Int {
        return rates.count
    }
    
    func getExchangeRate(at indexPath: IndexPath) -> ExchangeRateListInteractorOutput.RateViewModel {
        return rates[indexPath.row]
    }
    
}
