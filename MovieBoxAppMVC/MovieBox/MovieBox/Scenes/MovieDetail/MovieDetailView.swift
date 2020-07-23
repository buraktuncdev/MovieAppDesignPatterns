//
//  MovieDetailView.swift
//  MovieBox
//
//  Created by Burak Tunc on 23.07.2020.
//  Copyright © 2020 Burak Tunç. All rights reserved.
//

import UIKit

final class MovieDetailView: UIView, MovieDetailViewProtocol {
    
    @IBOutlet weak var movieTitleLabel: UILabel!
    @IBOutlet weak var artistNameLabel: UILabel!
    @IBOutlet weak var genreLabel: UILabel!
    
    
    func updateMovieDetail(_ movieDetail: MovieDetailPresentation) {
        movieTitleLabel.text = movieDetail.title
        artistNameLabel.text = movieDetail.artistName
        genreLabel.text = movieDetail.genre
    }
    
}
