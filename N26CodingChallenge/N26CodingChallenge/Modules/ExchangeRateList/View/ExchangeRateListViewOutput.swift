//
//  ExchangeRateListOutput.swift
//  N26CodingChallenge
//
//  Created by De MicheliStefano on 02.03.19.
//  Copyright © 2019 De MicheliStefano. All rights reserved.
//

import Foundation

protocol ExchangeRateListViewOutput {
    func didTriggerViewReadyEvent()
    func getNumberOfExchangeRates() -> Int
    func didDequeueCell(at indexPath: IndexPath, completion: @escaping ((rate: String, symbol: String)) -> ())
    func didSelectExchangeRate(at indexPath: IndexPath)
}
