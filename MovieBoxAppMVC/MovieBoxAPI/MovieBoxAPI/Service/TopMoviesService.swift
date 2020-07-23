//
//  TopMoviesService.swift
//  MovieBoxAPI
//
//  Created by Burak Tunc on 21.07.2020.
//  Copyright © 2020 Burak Tunç. All rights reserved.
//

import Foundation
import Alamofire

// For Mocking Tests
public protocol TopMoviesServiceProtocol {
    func fetchTopMovies(completion: @escaping (Result<TopMoviesResponse>) -> Void)
}


public class TopMoviesService: TopMoviesServiceProtocol {

    public init() { }
    
    public func fetchTopMovies(completion: @escaping (Result<TopMoviesResponse>) -> Void) {
        let urlString = "https://rss.itunes.apple.com/api/v1/us/movies/top-movies/all/25/explicit.json"
        
        AF.request(urlString).responseData { (response) in
            switch response.result {
            case .success(let data):
                let decoder = Decoders.plainDateDecoder
                do {
                    let response = try decoder.decode(TopMoviesResponse.self, from: data)
                    completion(.success((response)))
                } catch{
                    completion(.failure(Error.serializationError(internal: error)))
                }
            case .failure(let error):
                completion(.failure(Error.networkError(internal: error)))
            }
        }
    }
    
    
    
    
}
