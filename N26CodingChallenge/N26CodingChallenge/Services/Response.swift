//
//  Response.swift
//  N26CodingChallenge
//
//  Created by De MicheliStefano on 02.03.19.
//  Copyright © 2019 De MicheliStefano. All rights reserved.
//

import Foundation

enum Response<Value> {
    case success(Value)
    case error(Error)
}
