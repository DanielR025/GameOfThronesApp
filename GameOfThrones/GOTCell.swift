//
//  GOTCell.swift
//  GameOfThrones
//
//  Created by Daniel Reicher on 05.08.17.
//  Copyright © 2017 Daniel Reicher. All rights reserved.
//

import UIKit

class GOTCell: UICollectionViewCell {
    
    @IBOutlet weak var thumbImg: UIImageView!
    @IBOutlet weak var nameLbl: UILabel!
    
    var charakter: Charakter!
    
    required init?(coder aDecoder: NSCoder){
        super.init(coder: aDecoder)
        layer.cornerRadius = 5.0
    }

    func configureCell(charakter: Charakter)
    {
        self.charakter = charakter
        
        nameLbl.text = self.charakter.name.capitalized
        thumbImg.image = UIImage(named: "\(self.charakter.nummer)")
    }

        
}
