//
//  ViewController.swift
//  China Arbor Day
//
//  Created by 李文斌 on 16/3/3.
//  Copyright © 2016年 Migoo Technology. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var pageControl: UIPageControl?
    @IBOutlet weak var startButton: UIButton?
    
//    @IBAction func presentWebVC(sender: AnyObject){
//        var webVC: WebViewController = WebViewController()
//        self.presentViewController(webVC, animated: true, completion: nil)
//    }
    
       
    private var scrollView: UIScrollView?
    private let numOfPages = 3
    

    override func viewDidLoad() {
        super.viewDidLoad()
        addScrollewView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    func addScrollewView(){
        let frame = self.view.bounds
        
        scrollView = UIScrollView(frame: frame)
        scrollView!.pagingEnabled = true
        scrollView!.showsHorizontalScrollIndicator = false
        scrollView!.showsVerticalScrollIndicator = false
        scrollView!.scrollsToTop = false
        scrollView!.bounces = false
        scrollView!.contentOffset = CGPointZero
        
        //将scrollView 的 contentSize 设为屏幕宽度的3倍(根据实际情况改变)
        scrollView!.contentSize = CGSize(width: frame.size.width * CGFloat(numOfPages), height: frame.size.height)
        
        scrollView!.delegate = self
        
        for index in 0..<numOfPages {
            let imageView = UIImageView (image: UIImage(named: "GuideImage\(index+1).JPG"))
            imageView.frame = CGRect(x: frame.size.width * CGFloat(index), y: 0, width: frame.size.width, height: frame.size.height)
            scrollView!.addSubview(imageView)
        }
        
        self.view.insertSubview(scrollView!, atIndex: 0)
        
        // 给开始按钮设置圆角
        startButton!.layer.cornerRadius = 15.0
        // 隐藏开始按钮
        startButton!.alpha = 0.0
    }

    // 隐藏状态栏
    override func prefersStatusBarHidden() -> Bool {
        return true
    }
    
}
extension ViewController: UIScrollViewDelegate{
    func scrollViewDidScroll(scrollView: UIScrollView) {
        let offset = scrollView.contentOffset
        // 随着滑动改变pageControl的状态
        pageControl!.currentPage = Int(offset.x / view.bounds.width)
        
        // 因为currentPage是从0开始，所以numOfPages减1
        if pageControl!.currentPage == numOfPages - 1 {
            UIView.animateWithDuration(0.5) {
                self.startButton!.alpha = 1.0
            }
        } else {
            UIView.animateWithDuration(0.2) {
                self.startButton!.alpha = 0.0
            }
        }
    }

}



