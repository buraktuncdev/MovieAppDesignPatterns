//
//  ViewController.swift
//  MovieBox
//
//  Created by Burak Tunc on 20.07.2020.
//  Copyright © 2020 Burak Tunç. All rights reserved.
//

import UIKit
import MovieBoxAPI

class ViewController: UIViewController {
    
    let service: TopMoviesServiceProtocol = TopMoviesService()

    override func viewDidLoad() {
        super.viewDidLoad()
        service.fetchTopMovies { (result) in
            print(result)
        }
    }
}

