//
//  WebViewController.swift
//  China Arbor Day
//
//  Created by Migoo_HouHH on 16/4/5.
//  Copyright © 2016 Migoo Technology. All rights reserved.
//

import UIKit

class WebViewController: UIViewController {
    
    @IBOutlet var webView: UIWebView? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
          webView?.loadRequest(NSURLRequest(URL: NSURL(string: "http://show.lanrenmb.com/v-U60513M5T6LE?ewmcode=1")!))
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}
