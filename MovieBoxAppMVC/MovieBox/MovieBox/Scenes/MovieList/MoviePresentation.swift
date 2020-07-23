//
//  MoviePresentation.swift
//  MovieBox
//
//  Created by Burak Tunc on 21.07.2020.
//  Copyright © 2020 Burak Tunç. All rights reserved.
//

import Foundation
import MovieBoxAPI

final class MoviePresentation:NSObject {
    // Each row shows title and detail
    let title: String
    let detail: String
    
    init(title: String, detail:String) {
        self.title = title
        self.detail = detail
        super.init()
    }
}

extension MoviePresentation {
    convenience init(movie: Movie) {
        self.init(title: movie.name, detail: movie.artistName)
    }
}
