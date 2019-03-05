//
//  ExchangeRateDetailPresenter.swift
//  N26CodingChallenge
//
//  Created by De MicheliStefano on 05.03.19.
//  Copyright © 2019 De MicheliStefano. All rights reserved.
//

class ExchangeRateDetailPresenter: ExchangeRateDetailModuleInput {
    
    var view: ExchangeRateDetailViewInput!
    var interactor: ExchangeRateDetailInteractorInput!
    var router: ExchangeRateDetailRouterInput!
    
}

extension ExchangeRateDetailPresenter: ExchangeRateDetailViewOutput {
    
    func didTriggerViewReadyEvent() {
        view.setupInitialState()
        interactor.getExchangeRateInformation()
    }
    
}

extension ExchangeRateDetailPresenter: ExchangeRateDetailInteractorOutput {
    
    func presentExchangeRateDetails(with directorName: String, actorName: String, actorScreenName: String) {
        view.showExchangeRateDetails(with: directorName, actorName: actorName, actorScreenName: actorScreenName)
    }
    
}
