//
//  ExchangeRateAPI.swift
//  N26CodingChallenge
//
//  Created by De MicheliStefano on 02.03.19.
//  Copyright © 2019 De MicheliStefano. All rights reserved.
//

import Foundation

/**
 The network service for fetching exchange rate data from the network.
 */

struct ExchangeRateAPI: APIProtocol {
    
    // MARK: - Properties
    
    let baseUrl = URL(string: "https://api.coindesk.com/v1/bpi/")!
    let apiLoader: APILoaderProtocol
    
    // MARK: - Init
    
    init(apiLoader: APILoaderProtocol = URLSession.shared) {
        self.apiLoader = apiLoader
    }
    
    // MARK: - Network request methods
    
    /// A network request for loading current rates.
    func loadCurrentRates(completion: @escaping (Response<CurrentRate>) -> ()) {
        let url = self.url(pathComponents: ["posts"])
        return fetch(with: url, completion: completion)
    }
    
    /// A network request for loading historical rates.
    func loadHistoricalRates(from startDate: String, to endDate: String, completion: @escaping (Response<HistoricalRates>) -> ()) {
        let url = self.url(pathComponents: ["comments"])
        return fetch(with: url, completion: completion)
    }
    
    // MARK: - Generic network requests
    
    /// A generic fetch request.
    private func fetch<Resource: Codable>(with url: URL, completion: @escaping (Response<Resource>) -> ()) {
            apiLoader.loadData(from: url) {data, res, error in
                if let error = error {
                    NSLog("Error with FETCH urlRequest: \(error)")
                    completion(Response.error(ExchangeRateError.Types.noConnection))
                    return
                }
                
                guard let data = data else {
                    NSLog("No data returned")
                    completion(Response.error(ExchangeRateError.Types.requestFailed))
                    return
                }
                
                if let httpResponse = res as? HTTPURLResponse {
                    if httpResponse.statusCode != 200 {
                        NSLog("An error code was returned from the http request: \(httpResponse.statusCode)")
                        completion(Response.error(ExchangeRateError.Types.requestFailed))
                        return
                    }
                }
                
                do {
                    let resource = try JSONDecoder().decode(Resource.self, from: data)
                    completion(Response.success(resource))
                } catch {
                    NSLog("Error decoding data: \(error)")
                    completion(Response.error(ExchangeRateError.Types.decodingFailed))
                    return
                }
            }.resume()
    }
    
    /// A helper function for adding path components to the base url.
    private func url(pathComponents: [String], pathExtension: String? = nil) -> URL {
        var url = baseUrl
        pathComponents.forEach { url.appendPathComponent($0) }
        if let pathExtension = pathExtension { url.appendPathExtension(pathExtension) }
        return url
    }
    
}
