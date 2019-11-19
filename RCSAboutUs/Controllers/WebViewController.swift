//
//  WebViewController.swift
//  RCSAboutUs
//
//  Created by Artjoms Vorona on 14/11/2019.
//  Copyright © 2019 Artjoms Vorona. All rights reserved.
//

import WebKit
import UIKit

class WebViewController: UIViewController, WKNavigationDelegate {
    
    var passedLink = ""
    
    @IBOutlet var gitWebView: WKWebView!
    
    override func loadView() {
        gitWebView = WKWebView()
        gitWebView.navigationDelegate = self
        view = gitWebView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let url = URL(string: passedLink) ?? URL(string:"https://github.com/ArtjomsVorona/RCSAboutUs")
        let urlRequest = URLRequest(url: url!)
        gitWebView.load(urlRequest)
        gitWebView.allowsBackForwardNavigationGestures = true
    }
    

}
