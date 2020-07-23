//
//  MovieListViewController.swift
//  MovieBox
//
//  Created by Burak Tunc on 21.07.2020.
//  Copyright © 2020 Burak Tunç. All rights reserved.
//

import UIKit
import MovieBoxAPI

final class MovieListViewController: UIViewController {
    
    @IBOutlet weak var customView: MovieListView!
    var service: TopMoviesService! // Implicitly Unwrapped because we instantiate. Storyboard inject the Custom View, but we need service dependency injection.
    private var movieList: [Movie] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        customView.setLoading(true)
        
        service.fetchTopMovies { [weak self] result in
            
            guard let self = self else { return }
            switch result {
            case .success(let value):
                let moviePresentations = value.results.map(MoviePresentation.init)
                self.customView.updateMovieList(moviePresentations)
            case .failure(let error):
                print(error)
            }
            
            self.customView.setLoading(false)
        }
    }
    
}
