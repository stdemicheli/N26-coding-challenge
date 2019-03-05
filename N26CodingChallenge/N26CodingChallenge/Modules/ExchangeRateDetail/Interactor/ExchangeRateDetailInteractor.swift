//
//  ExchangeRateDetailInteractor.swift
//  N26CodingChallenge
//
//  Created by De MicheliStefano on 05.03.19.
//  Copyright © 2019 De MicheliStefano. All rights reserved.
//

class ExchangeRateDetailInteractor: ExchangeRateDetailInteractorInput {
    
    var output: ExchangeRateDetailInteractorOutput!
    var rate: CurrentRate!
    
    func getExchangeRateInformation() {
        guard let rate = self.rate else { return }
        
        output.presentExchangeRateDetails(with: "", actorName: "", actorScreenName: "")
    }
    
}
