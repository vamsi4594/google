//
//  ViewController.swift
//  google
//
//  Created by THANIKANTI VAMSI KRISHNA on 1/20/20.
//  Copyright © 2020 THANIKANTI VAMSI KRISHNA. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {

   
    @IBOutlet weak var webView: WKWebView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // allocate url to display as string
        
        let url = URL(string: "http://www.google.com")
        let request = URLRequest(url: url!)
        // loading the webview from url to storyboard
        webView.load(request)
        // website dont load due to security systems of apple. to do this chane settings of your web project transport
        // allow arbitary load give permission to access web browsers
        // current xcode has keyboard issues

       
    }
    
    @IBAction func backward(_ sender: Any)
    {
        if webView.canGoBack
        {
            webView.goBack()
        }
        
    }
    
    
    @IBAction func forward(_ sender: Any)
    {
        if webView.canGoForward
        {
            webView.goForward()
        }
    }
    
    
    @IBAction func refresh(_ sender: Any)
    {
        webView.reload()
    }
    
    @IBAction func cancel(_ sender: Any)
    {
        webView.stopLoading()
        
    }
    
}

