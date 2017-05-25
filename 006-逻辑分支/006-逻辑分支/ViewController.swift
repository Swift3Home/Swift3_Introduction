//
//  ViewController.swift
//  006-逻辑分支
//
//  Created by lichuanjun on 2017/5/21.
//  Copyright © 2017年 lichuanjun. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        demo1()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - 三目
    func demo1() -> () {
        let x = 3
        
        // 三目的语法和OC一样的
        x > 5 ? print("大了") : print("小了")
        
        // 分享，有印象就行
        // `()` 表示空执行
        x > 5 ? print("大了") : ()
    }
    
    // MARK: - 简单的分支
    func demo() -> () {
        let x = 10
        
        /**
         1. 条件不需要 ()
         2. 语句必须有 {}
            - 很多公司的代码规范中，禁止不使用 {}
        */
        if x > 5 {
            print("大了")
        } else {
            // Will never be executed
            // 永远不会被执行 - 编译器编译的时候，会做语法检查！
            print("小了")
        }
        
    }
}

