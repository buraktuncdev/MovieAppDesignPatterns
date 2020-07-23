//
//  ResourceLoader.swift
//  MovieBoxMVCTests
//
//  Created by Burak Tunc on 23.07.2020.
//  Copyright © 2020 Burak Tunç. All rights reserved.
//

import Foundation
import MovieBoxAPI

class ResourceLoader {
    enum MovieResource: String {
        case movie
    }
    
    static func loadMovie(resource: MovieResource) throws -> Movie {
        let bundle = Bundle.test
        let url = try bundle.url(forResource: resource.rawValue, withExtension: "json").unwrap()
        let data = try Data(contentsOf: url)
        let decoder = Decoders.plainDateDecoder
        let movie = try decoder.decode(Movie.self, from: data)
        return movie
    }
}

private extension Bundle {
    class Dummy { }
    static let test = Bundle(for: Dummy.self)
}


public enum Error: Swift.Error {
    case FoundNilWhileUnwrappingError
    case IndexOutOfBoundsError
}

public extension Optional {

    public func unwrap() throws -> Wrapped {
        switch self {
        case .some(let wrapped):
            return wrapped
        case .none:
            throw Error.FoundNilWhileUnwrappingError
        }
    }
}

public extension Array {
    
    public func element(at index: Int) throws -> Element {
        guard index >= 0 && index < self.count else {
            throw Error.IndexOutOfBoundsError
        }
        return self[index]
    }
}
