//
//  ExchangeRateDetailInteractorInput.swift
//  N26CodingChallenge
//
//  Created by De MicheliStefano on 04.03.19.
//  Copyright © 2019 De MicheliStefano. All rights reserved.
//

protocol ExchangeRateDetailInteractorInput: class {
    var output: ExchangeRateDetailInteractorOutput! { get set }
    var rate: CurrentRate! { get set }
    
    func getExchangeRateInformation()
}
