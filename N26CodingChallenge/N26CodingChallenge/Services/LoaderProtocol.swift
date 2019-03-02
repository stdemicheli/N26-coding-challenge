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
    func loadBTCRates() -> ()
    func loadBTCRateDetail(for date: String) -> ()
}
