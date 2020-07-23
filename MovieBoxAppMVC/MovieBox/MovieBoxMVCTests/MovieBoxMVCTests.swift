//
//  MovieBoxMVCTests.swift
//  MovieBoxMVCTests
//
//  Created by Burak Tunc on 23.07.2020.
//  Copyright © 2020 Burak Tunç. All rights reserved.
//

import XCTest
@testable import MovieBoxAPI
@testable import MovieBox
 

class MovieBoxMVCTests: XCTestCase {

    
    private var service: MockService!
    private var view: MockMovieListView!
    var controller: MovieListViewController!
    
    
    override func setUp() {
        service = MockService()
        view = MockMovieListView()
        controller = MovieListViewController()
        
        controller.customView = view
        controller.service = service
    }

    func testMovieList() throws {
        // Given Json
        let movie = try ResourceLoader.loadMovie(resource: .movie)
        service.movies = [movie]
        
        // When
        controller.loadViewIfNeeded()
        
        XCTAssertEqual(view.isLoadingValues, [true,false])
        XCTAssertEqual(view.movieList?.count, 1)
        XCTAssertEqual(try view.movieList?.element(at: 0).title, movie.name)
        
    }

}


// Service Mock
private final class MockService: TopMoviesServiceProtocol {
    
    var movies: [Movie] = []
    
    func fetchTopMovies(completion: @escaping (Result<TopMoviesResponse>) -> Void) {
        completion(.success(TopMoviesResponse(results: movies)))
    }
    
    
    
    
}

// View Mock
private final class MockMovieListView: MovieListViewProtocol {
    
    var delegate: MovieListViewDelegate?
    var isLoadingValues: [Bool] = []
    var movieList: [MoviePresentation]?
    
    func updateMovieList(_ movieList: [MoviePresentation]) {
        self.movieList = movieList
    }
    
    func setLoading(_ isLoading: Bool) {
        isLoadingValues.append(isLoading)
    }
    
    
}
