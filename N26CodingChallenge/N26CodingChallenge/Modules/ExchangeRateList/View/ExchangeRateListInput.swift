//
//  ExchangeRateListInput.swift
//  N26CodingChallenge
//
//  Created by De MicheliStefano on 02.03.19.
//  Copyright © 2019 De MicheliStefano. All rights reserved.
//

protocol ExchangeRateListInput: class {
    var output: ExchangeRateListOutput! { get set }
    
    func setupInitialState()
    func showExchangeRateList()
}
