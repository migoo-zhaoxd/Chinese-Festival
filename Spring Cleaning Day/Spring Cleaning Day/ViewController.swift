//
//  ViewController.swift
//  Spring Cleaning Day
//
//  Created by 李文斌 on 16/3/3.
//  Copyright © 2016年 Migoo Technology. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var wv: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        wv.loadRequest(NSURLRequest(URL:NSURL(string: "http://mp.weixin.qq.com/s?__biz=MjM5MzE0MjcxNA==&mid=205016808&idx=1&sn=550fe667517c209bfe9bcd620f471f6f&scene=7#wechat_redirect")!))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

