//
//  APIProtocol.swift
//  N26CodingChallenge
//
//  Created by De MicheliStefano on 02.03.19.
//  Copyright © 2019 De MicheliStefano. All rights reserved.
//

import Foundation

/**
 The protocol for fetching feed data from the network.
 */

protocol APIProtocol {
    var apiLoader: APILoaderProtocol { get }
    func loadCurrentRates(completion: @escaping (Response<CurrentRate>) -> ())
    func loadHistoricalRates(from startDate: String, to endDate: String, completion: @escaping (Response<HistoricalRates>) -> ())
}

/**
 A network data loader protocol and extension for loading data from network.
 The data loader protocol gives us the ability to inject mock data for testing.
 */

protocol APILoaderProtocol {
    func loadData(from request: URLRequest, completion: @escaping(Data?, URLResponse?,  Error?) -> Void) -> URLSessionDataTask
    func loadData(from url: URL, completion: @escaping(Data?, URLResponse?, Error?) -> Void) -> URLSessionDataTask
}

extension URLSession: APILoaderProtocol {
    func loadData(from request: URLRequest, completion: @escaping (Data?, URLResponse?, Error?) -> Void) -> URLSessionDataTask {
        return dataTask(with: request) { (data, res, error) in
            completion(data, res, error)
        }
    }
    
    func loadData(from url: URL, completion: @escaping (Data?, URLResponse?, Error?) -> Void) -> URLSessionDataTask {
        return dataTask(with: url) { (data, res, error) in
            completion(data, res, error)
        }
    }
}
