//
//  MovieListContracts.swift
//  MovieBox
//
//  Created by Burak Tunc on 21.07.2020.
//  Copyright © 2020 Burak Tunç. All rights reserved.
//

import Foundation


// Communicate Controller and View
@objc protocol MovieListViewProtocol: class{
    var delegate: MovieListViewDelegate? { get set }
    func updateMovieList(_ movieList: [MoviePresentation])
    func setLoading(_ isLoading: Bool)
}

@objc protocol MovieListViewDelegate: class {
    func didSelectMovie(at index: Int)
}
