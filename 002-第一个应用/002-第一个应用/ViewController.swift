//
//  ViewController.swift
//  002-第一个应用
//
//  Created by lichuanjun on 2017/5/20.
//  Copyright © 2017年 lichuanjun. All rights reserved.
//

import UIKit

/**
 1. OC      [[UIView alloc] initWithXXX:]
    Swift   UIView(XXX:)
            UIView()
 
    类名() == alloc /init 等价
 
 2. 类方法
    OC      [UIColor redColor]
    Swift3.0   UIColor.red()
    Swift2.0   UIColor.redColor()
 
 3. 访问当前对象的属性，可以不使用`self.`
    建议：都不用，在编译器提示的时候，再添加，会对`语境`有更好的体会
    原因：闭包(类似于 OC block)，需要使用self.
 
 4. 没有 `;`
    `;`目的分割语句的，在Swift中，默认不需要
 
 5. 枚举类型
    OC      UIButtonTypeContactAdd
    Swift   .contactAdd
 
 6. 监听方法
    OC      @selector
    Swift   #selector，如果带参数，不需要使用`:`
    2.0     直接使用""，需要使用`:`
 
 7. 调试
    OC      NSLog
 
            __FUNCTION__
 
    Swift   print
            - 没有时间
            - 效率比 NSLog 要高
 
            #function
 */
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // 1. 创建一个视图
        let v = UIView(frame: CGRect(x: 0, y: 20, width: 100, height: 100))
        // 设置背景颜色
        v.backgroundColor = UIColor.red
        // 添加到当前视图
        view.addSubview(v)
        
        // 2.创建一个按钮
        let btn = UIButton(type: .contactAdd)
        v.addSubview(btn)
        btn.addTarget(self, action: #selector(clickMe), for: .touchUpInside)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func clickMe(btn: UIButton) -> () {
        print(#function)
        print(btn)
    }
}

