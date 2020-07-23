//
//  TopMoviesResponse.swift
//  MovieBoxAPI
//
//  Created by Burak Tunc on 21.07.2020.
//  Copyright © 2020 Burak Tunç. All rights reserved.
//

import Foundation

public struct TopMoviesResponse: Decodable {
    
    private enum RootCodingKeys: String, CodingKey {
        case feed
    }
    
    private enum FeedCodingKeys: String, CodingKey {
        case results
    }
    
    public let results: [Movie]
    
    init(results: [Movie]) {
        self.results = results
    }
    
    public init(from decoder:Decoder) throws {
        let rootContainer = try decoder.container(keyedBy: RootCodingKeys.self)
        let feedContainer = try rootContainer.nestedContainer(keyedBy: FeedCodingKeys.self, forKey: .feed)
        self.results = try feedContainer.decode([Movie].self, forKey: .results)
    }
}
