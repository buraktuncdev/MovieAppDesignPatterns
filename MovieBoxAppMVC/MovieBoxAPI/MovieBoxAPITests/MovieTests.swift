//
//  MovieTests.swift
//  MovieBoxAPITests
//
//  Created by Burak Tunc on 21.07.2020.
//  Copyright © 2020 Burak Tunç. All rights reserved.
//

import XCTest
@testable import MovieBoxAPI

class MovieTests: XCTestCase {

   
    func testParsingJSON() throws {
        /*let bundle = Bundle(for: MovieTests.self)
        
        guard let safeURL = bundle.url(forResource: "movie", withExtension: "json", subdirectory: "Resources") else {
            XCTFail("URL is not in Bundle")
            return
        }*/
        
        let jsonStr = """
        {
         "artistName": "Rod Lurie",
         "id": "1515512877",
         "releaseDate": "2020-07-03",
         "name": "The Outpost",
         "kind": "movie",
         "copyright": "© 2020 OUTPOST PRODUCTIONS, INC. ALL RIGHTS RESERVED.",
         "contentAdvisoryRating": "Explicit",
         "artworkUrl100": "https://is4-ssl.mzstatic.com/image/thumb/Video113/v4/35/c4/ca/35c4ca11-e7a4-6154-45b5-a9f3a53a1d08/pr_source.lsr/200x200bb.png",
         "genres": [
           {
             "genreId": "4401",
             "name": "Action & Adventure",
             "url": "https://itunes.apple.com/us/genre/id4401"
           }
          ],
         "url": "https://itunes.apple.com/us/movie/the-outpost/id1515512877"
        }
"""

        let data = jsonStr.data(using: .utf8)!
        let decoder = Decoders.plainDateDecoder
        let movie = try decoder.decode(Movie.self, from: data)
        
        // Parsing Tests
        XCTAssertEqual(movie.artistName, "Rod Lurie")
        XCTAssertEqual(movie.name, "The Outpost")
        XCTAssertEqual(movie.copyright, "© 2020 OUTPOST PRODUCTIONS, INC. ALL RIGHTS RESERVED.")
        XCTAssertEqual(movie.genres.count, 1)
        XCTAssertEqual(movie.genres.first?.name, "Action & Adventure")
    }

   
}
