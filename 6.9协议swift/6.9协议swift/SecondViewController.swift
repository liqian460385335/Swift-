//
//  SecondViewController.swift
//  6.9协议swift
//
//  Created by 微我网络 on 15/7/9.
//  Copyright (c) 2015年 lamcelot. All rights reserved.
//

import UIKit
//申明协议
protocol homedelegate
{
    func names(name:NSString)
}
class SecondViewController: UIViewController {

    //代理
    var textF:UITextField?
    //设置代理//MARK: -<设置代理>
    var delegateHome : homedelegate?
    var str:String?
    var btns :UIButton!
    var la:UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

    self.view.backgroundColor = UIColor.grayColor()
        let label = CGRectMake(100, 100, 100, 30)
        la = UILabel(frame: label)
        la.backgroundColor = UIColor.redColor()
        la.text = "还是"
        self.view .addSubview(la)
        
        btns = UIButton(frame: CGRectMake(140, 140, 100, 30))
            
        btns.backgroundColor = UIColor.redColor()
        btns .addTarget(self, action: "process", forControlEvents: UIControlEvents.TouchUpInside)
        
        self.view .addSubview(btns)
      
        textF=UITextField()
        textF!.frame=CGRectMake(110,200,100,20)
        textF!.backgroundColor=UIColor.greenColor()
        textF!.borderStyle = .RoundedRect
        self.view .addSubview(textF!)
    }
    func process()
    {
        println("\(la.text)")
//        var str = la!.text
        self.str = textF!.text
         println("\(str)")
        // MARK: -<实现代理方法>
        //实现代理方法
        self.delegateHome! .names(str!)
        self.navigationController?.popViewControllerAnimated(true)
    }
}

