//
//  MovieDetailBuilder.swift
//  MovieBox
//
//  Created by Burak Tunc on 23.07.2020.
//  Copyright © 2020 Burak Tunç. All rights reserved.
//

import UIKit
import MovieBoxAPI

final class MovieDetailBuilder {
    
    static func make(with movie: Movie) -> MovieDetailViewController {
        let storyboad = UIStoryboard(name: "MovieDetail", bundle: nil)
        let viewController = storyboad.instantiateViewController(identifier: "MovieDetailViewController") as! MovieDetailViewController
        viewController.movie = movie
        return viewController
    }
    
}

