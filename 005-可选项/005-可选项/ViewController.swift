//
//  ViewController.swift
//  005-可选项
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

    func demo1() -> () {
        // 1> 定义y，没有初始化
        let y: Int?
        
        // 2> 给常量设置数值，初始化的工作能做一次
        y = 20
        // 再次修改常量会报错
        // y = 30
        
        print(y ?? 0)
        
        // var 的可选值默认为nil
        // let 的可选值没有默认值
        var x: Int?
        
        x = 10
        x = 100
        
        print(x)
    }
    // 最常见的错误
    // unexpectedly found nil while unwrapping an Optional value
    // 再解包时发现了nil值
    /**
     定义 可选项使用 ?
     解包使用 !，准备计算
    */
    func demo() -> () {
        
        // 1. 原始的可选项定义
        // none: 没有值 或者 some:某一类值
        let x: Optional = 10
        
        // 2. 简单的定义
        // `?` 用来定义 y是一个可选的Int 类型，可能没有值，也可能有一个整数
        let y: Int? = 40//nil//20
        
        // 输出结果 Optional(10)，提示这是一个可选值
        print(x ?? 0)
        print(y ?? 0)
        // 1>  不同类型之间的值不能直接运算！如果没有值是nil 不是任何数据类型，不能参与计算
        // 2> `!`强行解包 - 从可选值中强行获取对应的非空值
        print(x! + y!)
    }
}

