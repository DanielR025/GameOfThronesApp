//
//  MapView.swift
//  GameOfThrones
//
//  Created by Daniel Reicher on 10.08.17.
//  Copyright © 2017 Daniel Reicher. All rights reserved.
//

import UIKit

class MapView: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var scrollView: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()

        self.scrollView.minimumZoomScale = 1.0
        self.scrollView.maximumZoomScale = 3.0
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return self.imageView
    }
}
