//
//  MovieDetailPresentation.swift
//  MovieBox
//
//  Created by Burak Tunc on 23.07.2020.
//  Copyright © 2020 Burak Tunç. All rights reserved.
//

import Foundation
import MovieBoxAPI


struct MovieDetailPresentation {
    let title: String
    let artistName: String
    let genre: String
}

extension MovieDetailPresentation {
    init(movie: Movie) {
        self.init(title: movie.name, artistName: movie.artistName, genre: movie.genres.map({$0.name}).joined(separator: ","))
    }
}
