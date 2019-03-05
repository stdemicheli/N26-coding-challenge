//
//  ExchangeRateListInput.swift
//  N26CodingChallenge
//
//  Created by De MicheliStefano on 02.03.19.
//  Copyright © 2019 De MicheliStefano. All rights reserved.
//

protocol ExchangeRateListViewInput: class {
    var output: ExchangeRateListViewOutput! { get set }
    
    func setupInitialState()
    func showExchangeRateList()
    func showError(with message: String)
}
