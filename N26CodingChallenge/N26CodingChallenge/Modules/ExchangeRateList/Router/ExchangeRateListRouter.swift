//
//  ExchangeRateListRouter.swift
//  N26CodingChallenge
//
//  Created by De MicheliStefano on 03.03.19.
//  Copyright © 2019 De MicheliStefano. All rights reserved.
//

import Foundation
import UIKit

class ExchangeRateListRouter: ExchangeRateListRouterInput {
    
    var viewController: ExchangeRateListViewController!
    
    func presentDetails() {
        let detailModuleBuilder = ExchangeRateDetailModuleBuilder()
        let detailViewController = detailModuleBuilder.build()
        viewController.navigationController?.pushViewController(detailViewController, animated: true)
    }
    
}
