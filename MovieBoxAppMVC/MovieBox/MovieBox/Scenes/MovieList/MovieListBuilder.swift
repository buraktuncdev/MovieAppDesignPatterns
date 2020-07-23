//
//  MovieListBuilder.swift
//  MovieBox
//
//  Created by Burak Tunc on 23.07.2020.
//  Copyright © 2020 Burak Tunç. All rights reserved.
//


import UIKit


final class MovieListBuilder {
    static func make() -> MovieListViewController {
        let storyboard = UIStoryboard(name: "MovieList", bundle: nil)
        let viewController = storyboard.instantiateViewController(identifier: "MovieListViewController") as! MovieListViewController
        viewController.service = app.service
        return viewController
    }
}
