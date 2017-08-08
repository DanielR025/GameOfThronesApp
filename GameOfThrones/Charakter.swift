//
//  Charakter.swift
//  GameOfThrones
//
//  Created by Daniel Reicher on 05.08.17.
//  Copyright © 2017 Daniel Reicher. All rights reserved.
//

import Foundation

class Charakter {
    
    private var _name: String!
    private var _nummer: Int!
    private var _url: String!
    var name: String {
        return _name
    }
    var nummer: Int {
        return _nummer
    }
    
    var url: String {
        return _url
    }
    
    init(name: String, nummer: Int, url: String){
        self._name = name
        self._nummer = nummer
        self._url = url
    }

    
    
}
