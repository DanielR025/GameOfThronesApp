//
//  LibraryAPI.swift
//  GameOfThrones
//
//  Created by Daniel Reicher on 09.08.17.
//  Copyright © 2017 Daniel Reicher. All rights reserved.
//

import Foundation

final class LibraryAPI {
    // 1
    static let shared = LibraryAPI()
    private let dataRecource = DataResource()
    
    private init() {
        
    }
    
    func getChars() -> [Charakter]{
        return dataRecource.getChars()
    }
    
}
