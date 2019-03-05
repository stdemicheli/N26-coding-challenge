//
//  ExchangeRateDetailBuilder.swift
//  N26CodingChallenge
//
//  Created by De MicheliStefano on 04.03.19.
//  Copyright © 2019 De MicheliStefano. All rights reserved.
//

import UIKit

class ExchangeRateDetailModuleBuilder {
    
    func build() -> UIViewController {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: "ExchangeRateDetail") as! ExchangeRateDetailViewController
        
        let presenter = ExchangeRateDetailPresenter()
        let interactor = ExchangeRateDetailInteractor()
        let router = ExchangeRateDetailRouter()
        
        viewController.output = presenter
        
        presenter.view = viewController
        presenter.router = router
        presenter.interactor = interactor
        
        interactor.output = presenter
        
        return viewController
    }
    
}
