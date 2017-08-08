//
//  ViewController.swift
//  GameOfThrones
//
//  Created by Daniel Reicher on 05.08.17.
//  Copyright © 2017 Daniel Reicher. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{

    @IBOutlet weak var collection: UICollectionView!
    
    
    
    var dataRecource = DataResource()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collection.delegate = self
        collection.dataSource = self
    
    }

    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return dataRecource.charakters.count
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "GOTCell", for: indexPath) as? GOTCell {
            
            let charakter = dataRecource.charakters[indexPath.row]
            cell.configureCell(charakter: charakter)
            
            return cell
        } else {
            return UICollectionViewCell()
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let charakter = dataRecource.charakters[indexPath.row]
        performSegue(withIdentifier: "WebView", sender: charakter.url)
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 100, height: 103)
    }

    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? WebView {
            
            if let website = sender as? String {
            destination.url = website
            }
        }
    
    }
}
