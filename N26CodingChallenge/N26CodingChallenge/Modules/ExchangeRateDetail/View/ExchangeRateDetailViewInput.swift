//
//  ExchangeRateDetailViewInput.swift
//  N26CodingChallenge
//
//  Created by De MicheliStefano on 04.03.19.
//  Copyright © 2019 De MicheliStefano. All rights reserved.
//

protocol ExchangeRateDetailViewInput: class {
    var output: ExchangeRateDetailViewOutput! { get set }
    
    func setupInitialState()
    func showExchangeRateDetails(with directorName: String, actorName: String, actorScreenName: String)
}
