//
//  LoaderProtocol.swift
//  N26CodingChallenge
//
//  Created by De MicheliStefano on 02.03.19.
//  Copyright © 2019 De MicheliStefano. All rights reserved.
//

import Foundation

/**
 A protocol for loading data.
 */

protocol LoaderProtocol {
    var api: APIProtocol { get }
    func loadCurrentRate(completion: @escaping (Response<CurrentRate>) -> ())
    func loadHistoricalRates(completion: @escaping (Response<HistoricalRates>) -> ())
}
