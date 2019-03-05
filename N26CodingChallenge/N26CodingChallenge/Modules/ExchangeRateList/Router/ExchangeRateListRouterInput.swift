//
//  ExchangeRateListRouterInput.swift
//  N26CodingChallenge
//
//  Created by De MicheliStefano on 03.03.19.
//  Copyright © 2019 De MicheliStefano. All rights reserved.
//

import UIKit

protocol ExchangeRateListRouterInput: class {
    var viewController: ExchangeRateListViewController! { get set }
    func presentDetails()
}
