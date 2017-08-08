//
//  DataRecource.swift
//  GameOfThrones
//
//  Created by Daniel Reicher on 07.08.17.
//  Copyright © 2017 Daniel Reicher. All rights reserved.
//

import Foundation


class DataResource {
    
     var charakters = [Charakter]()
    
    
    init() {
        charakters.append(Charakter(name: "Jon Snow", nummer: 0, url: "http://de.gameofthrones.wikia.com/wiki/Jon_Snow"))
        let extractedExpr = Charakter(name: "Daenerys Targaryen", nummer: 1, url: "http://gameofthrones.wikia.com/wiki/Daenerys_Targaryen")
        charakters.append(extractedExpr)
        charakters.append(Charakter(name: "Tyrion Lannister", nummer: 2, url: "http://gameofthrones.wikia.com/wiki/Tyrion"))
        charakters.append(Charakter(name: "Eddard Stark", nummer: 3, url: "http://gameofthrones.wikia.com/wiki/Eddard_Stark"))
        charakters.append(Charakter(name: "Jaime Lannister", nummer: 4, url: "http://gameofthrones.wikia.com/wiki/Jaime_Lannister"))
        charakters.append(Charakter(name: "Khal Drogo", nummer: 5, url: "http://gameofthrones.wikia.com/wiki/Drogo"))
        charakters.append(Charakter(name: "Arya Stark", nummer: 6, url: "http://gameofthrones.wikia.com/wiki/Arya_Stark"))
        charakters.append(Charakter(name: "Petyr Baelish", nummer: 7, url: "http://gameofthrones.wikia.com/wiki/Petyr_Baelish"))
        charakters.append(Charakter(name: "Brienne of Tarth", nummer: 8, url: "http://gameofthrones.wikia.com/wiki/Brienne_of_Tarth"))
        charakters.append(Charakter(name: "Sansa Stark", nummer: 9, url: "http://gameofthrones.wikia.com/wiki/Sansa_Stark"))
        charakters.append(Charakter(name: "Bran Stark", nummer: 10, url: "http://gameofthrones.wikia.com/wiki/Bran_Stark"))
        charakters.append(Charakter(name: "Gregor Clegane", nummer: 11, url: "http://gameofthrones.wikia.com/wiki/Gregor_Clegane"))
        charakters.append(Charakter(name: "Melisandre", nummer: 12, url: "http://gameofthrones.wikia.com/wiki/Melisandre"))
        

    }
    
        
    
    
}
