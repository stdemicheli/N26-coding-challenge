//
//  ExchangeRateListPresenter.swift
//  N26CodingChallenge
//
//  Created by De MicheliStefano on 03.03.19.
//  Copyright © 2019 De MicheliStefano. All rights reserved.
//

import Foundation

class ExchangeRateListPresenter: DetailsModuleInput {
    
    var view: ExchangeRateListViewInput!
    
    var interactor: ExchangeRateListInteractorInput!
    
    var router: ExchangeRateListRouterInput!
    
}

extension ExchangeRateListPresenter: ExchangeRateListViewOutput {
    
    func didTriggerViewReadyEvent() {
        interactor.getExchangeRates()
        view.setupInitialState()
    }
    
    func getNumberOfExchangeRates() -> Int {
        return interactor.numberOfExchangeRates()
    }
    
    func didDequeueCell(at indexPath: IndexPath, completion: @escaping ((rate: String, symbol: String)) -> ()) {
        let rate = interactor.getExchangeRate(at: indexPath)
        completion(rate)
    }
    
    func didSelectExchangeRate(at indexPath: IndexPath) {
        let rate = interactor.getExchangeRate(at: indexPath)
        router.presentDetails()
    }
    
}

extension ExchangeRateListPresenter: ExchangeRateListInteractorOutput {
    
    func updateExchangeRates() {
        view.showExchangeRateList()
    }
    
    func handleError(with error: ExchangeRateError) {
        // TODO
    }
    
}

