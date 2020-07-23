//
//  Movie.swift
//  MovieBoxAPI
//
//  Created by Burak Tunc on 21.07.2020.
//  Copyright © 2020 Burak Tunç. All rights reserved.
//



import Foundation

public struct Movie: Decodable{
    
    public enum CodingKeys: String, CodingKey {
        case artistName
        case releaseDate
        case name
        case copyright
        case image = "artworkUrl100"
        case genres
        
    }
    
    public let artistName: String
    public let releaseDate: Date
    public let name: String
    public let copyright: String?
    public let image: URL
    public let genres: [Genre]
}

public struct Genre: Decodable{
    public let name: String
}
