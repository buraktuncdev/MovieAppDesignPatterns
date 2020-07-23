//
//  MoviePresentation.swift
//  MovieBox
//
//  Created by Burak Tunc on 21.07.2020.
//  Copyright © 2020 Burak Tunç. All rights reserved.
//

import Foundation
import MovieBoxAPI

struct MoviePresentation{
    // Each row shows title and detail
    let title: String
    let detail: String
}

extension MoviePresentation {
    init(movie: Movie) {
        self.init(title: movie.name, detail: movie.artistName)
    }
}
