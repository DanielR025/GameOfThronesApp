//
//  WebView.swift
//  GameOfThrones
//
//  Created by Daniel Reicher on 07.08.17.
//  Copyright © 2017 Daniel Reicher. All rights reserved.
//

import UIKit
import WebKit

class WebView: UIViewController {

    
    
    var webView: WKWebView!
    
    var _url: String!
    
    var url: String {
        get {
            return _url
        } set {
            _url = newValue
        }
    }
    
    override func loadView() {
        let webConfiguration = WKWebViewConfiguration()
        webView = WKWebView(frame: .zero, configuration: webConfiguration)
        view = webView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myURL = URL(string: _url)
        let myRequest = URLRequest(url: myURL!)
        webView.load(myRequest)
    }


    
}
