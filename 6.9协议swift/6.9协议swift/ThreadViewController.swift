
//
//  ThreadViewController.swift
//  6.9协议swift
//
//  Created by 微我网络 on 15/7/9.
//  Copyright (c) 2015年 lamcelot. All rights reserved.
//

import UIKit

class ThreadViewController: UIViewController {

    var ss:NSString?
    override func viewDidLoad() {
        super.viewDidLoad()
        var lal:UILabel!
        let label = CGRectMake(100, 100, 100, 30)
        lal = UILabel(frame: label)
        lal.font = UIFont .systemFontOfSize(12)
        lal.backgroundColor = UIColor.redColor()
        lal.text = ("\(ss)")
        self.view .addSubview(lal)
       
    }

   

   

}
