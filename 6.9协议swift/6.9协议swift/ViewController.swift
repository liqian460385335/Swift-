//
//  ViewController.swift
//  6.9协议swift
//
//  Created by 微我网络 on 15/7/9.
//  Copyright (c) 2015年 lamcelot. All rights reserved.
//

import UIKit
//
class ViewController: UIViewController,homedelegate{

    var btn:UIButton!
    var bb:UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
//        let secondvc:SecondViewController
        let btnget = CGRectMake(100, 100, 100, 30);
        btn = UIButton(frame: btnget)
        btn .setTitle("点我", forState: UIControlState.Normal)
        btn.backgroundColor = UIColor.redColor()
        btn.addTarget(self, action: Selector("process"), forControlEvents: UIControlEvents.TouchUpInside)
        self.view .addSubview(btn)
       
        let bt = CGRectMake(100, 160, 100, 30);
        bb = UIButton(frame: bt)
        bb .setTitle("点我", forState: UIControlState.Normal)
        bb.backgroundColor = UIColor.redColor()
        bb.addTarget(self, action: Selector("processclick"), forControlEvents: UIControlEvents.TouchUpInside)
        self.view .addSubview(bb)
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func process()
    {
        let svc = SecondViewController()
        //MARK:- <遵循代理>
        svc.delegateHome = self
        //遵守代理
        self.navigationController?.pushViewController(svc, animated: true)
    }
   
    func processclick()
    {
        let ttvc = ThreadViewController()
        ttvc.ss = "xxxxx"
         self.navigationController?.pushViewController(ttvc, animated: true)
    }
    // MAEK: -<实现代理方法>
    //实现second页面的代理方法
     func names(name:NSString)
     {
        btn .setTitle("\(name)", forState: UIControlState.Normal)
    }
}

