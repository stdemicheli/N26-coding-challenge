//
//  ExchangeRateListModuleInput.swift
//  N26CodingChallenge
//
//  Created by De MicheliStefano on 03.03.19.
//  Copyright © 2019 De MicheliStefano. All rights reserved.
//

protocol DetailsModuleInput: class {
    var view: ExchangeRateListViewInput! { get set }
    var interactor: ExchangeRateListInteractorInput! { get set }
    var router: ExchangeRateListRouterInput! { get set }
}
