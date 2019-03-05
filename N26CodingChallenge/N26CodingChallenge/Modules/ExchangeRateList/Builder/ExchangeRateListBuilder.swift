//
//  ExchangeRateListBuilder.swift
//  N26CodingChallenge
//
//  Created by De MicheliStefano on 03.03.19.
//  Copyright © 2019 De MicheliStefano. All rights reserved.
//

import UIKit

class ExchangeRateListBuilder {
    
    func build() -> UIViewController {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: "ExchangeRateList") as! ExchangeRateListViewController
        
        let presenter = ExchangeRateListPresenter()
        let interactor = ExchangeRateListInteractor()
        let router = ExchangeRateListRouter()
        let apiLoader = ExchangeRateAPI()
        let dataLoader = ExchangeRateLoader(api: apiLoader)

        viewController.output = presenter

        presenter.view = viewController
        presenter.router = router
        presenter.interactor = interactor

        interactor.output = presenter
        interactor.dataLoader = dataLoader

        router.viewController = viewController
//        router.navigationController = UINavigationController()
//        router.navigationController.pushViewController(viewController, animated: true)
        
        return viewController
    }
    
}
