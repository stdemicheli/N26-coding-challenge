//
//  ExchangeRateDetailModuleInput.swift
//  N26CodingChallenge
//
//  Created by De MicheliStefano on 04.03.19.
//  Copyright © 2019 De MicheliStefano. All rights reserved.
//

protocol ExchangeRateDetailModuleInput: class {
    var view: ExchangeRateDetailViewInput! { get set }
    var interactor: ExchangeRateDetailInteractorInput! { get set }
    var router: ExchangeRateDetailRouterInput! { get set }
}
