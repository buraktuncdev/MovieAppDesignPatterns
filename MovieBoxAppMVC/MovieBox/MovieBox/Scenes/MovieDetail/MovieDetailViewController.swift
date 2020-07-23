//
//  MovieDetailViewController.swift
//  MovieBox
//
//  Created by Burak Tunc on 23.07.2020.
//  Copyright © 2020 Burak Tunç. All rights reserved.
//

import UIKit
import MovieBoxAPI

final class MovieDetailViewController: UIViewController {
    
    @IBOutlet var customView:MovieDetailView! 
    var movie: Movie!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        customView.updateMovieDetail(MovieDetailPresentation(movie: movie))
    }
    
}
