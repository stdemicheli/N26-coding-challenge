//
//  XRateError.swift
//  N26CodingChallenge
//
//  Created by De MicheliStefano on 02.03.19.
//  Copyright © 2019 De MicheliStefano. All rights reserved.
//

/**
 An error model for handling exchange rate errors.
 */

struct ExchangeRateError {
    
    /// Error types for indicating the type of error that occured during the feed cycle.
    enum Types: Error {
        case requestFailed, decodingFailed, noConnection, valueNotFound, none
    }
    
    /// A type indicating the feed error type.
    var type: ExchangeRateError.Types
    
    /// An error message to be displayed to the user.
    var message: String {
        switch self.type {
        case .requestFailed:
            return "Error while fetching feed. Please try again."
        case .decodingFailed:
            return "Error while fetching feed. Please try again."
        case .noConnection:
            return "No internet connection."
        case .valueNotFound:
            return "Could not find post."
        case .none:
            return ""
        }
    }
    
}
