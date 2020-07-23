//
//  MovieListContracts.swift
//  MovieBox
//
//  Created by Burak Tunc on 21.07.2020.
//  Copyright © 2020 Burak Tunç. All rights reserved.
//

import Foundation


// Communicate Controller and View
protocol MovieListViewProtocol {
    func updateMovieList(_ movieList: [MoviePresentation])
    func setLoading(_ isLoading: Bool)
}
