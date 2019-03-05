//
//  ExchangeRateDetailViewController.swift
//  N26CodingChallenge
//
//  Created by De MicheliStefano on 04.03.19.
//  Copyright © 2019 De MicheliStefano. All rights reserved.
//

import UIKit

class ExchangeRateDetailViewController: UIViewController {
    
    var output: ExchangeRateDetailViewOutput!

    override func viewDidLoad() {
        super.viewDidLoad()
        output.didTriggerViewReadyEvent()
    }
    
}

extension ExchangeRateDetailViewController: ExchangeRateDetailViewInput {
    
    func setupInitialState() {
        
    }
    
    func showExchangeRateDetails(with directorName: String, actorName: String, actorScreenName: String) {
        
    }
    
    
    
    
}
