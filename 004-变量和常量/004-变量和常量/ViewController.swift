//
//  ViewController.swift
//  004-变量和常量
//
//  Created by lichuanjun on 2017/5/21.
//  Copyright © 2017年 lichuanjun. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        demo2()
        
        // 关于 var 和 let 的选择
        // 不可变的会更安全，开发的时候，通常都先使用let，在需要变化的时候，再改为 var
        // Variable 'x' was never mutated; consider changing to 'let' constant
        // 变量 x 从来没有被修改，建议改为 `let`
        var x = 10
        let y = 20
        
        print(x + y)
        
        // 修改视图属性
        let v = UIView()
        // 仅仅修改的是v的属性，并没有修改v的指针地址
        v.backgroundColor = UIColor.red
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func demo2() -> () {
        // 如果需要指定变量 / 常量的类型，也可以直接使用 let x: 类型 = 值
        // 提示：在Swift开发中，极少使用直接指定类型，通常都是自动推导！
        let x:Double = 10
        let y = 100.5
        
        print(x + y)
    }
    // 1. 定义变量 var
    //  常量 let，定义后，不能修改
    // 2. 自动推导，变量 / 常量的类型会根据右侧的代码执行结果，推导对应的类型
    // 热键：option + click
    // 3. 在Swift 中对类型要求异常严格
    //    *** 任何不同的数据之间，不允许直接运算
    //    不会做默认的隐式的转换，所有的类型确定，都有有程序员负责！
    //
    // 4. Swift 中，不存在基本数据类型，都是结构体！
    func demo1() -> () {
        let x = 10
        let y = 10.5
        
//        print(x + y)
        
        // 1. 将 y 转换成整数
        // OC 中的写法 (int)y => 类型强转
        // Swift 中 Int() `结构体`的构造函数
        print(x + Int(y))
        
        // 2. 将 x 转换成 Double
        print(Double(x) + y)
        
    }

    func demo() -> () {
        // 整数：Int(OC 中 NSInteger 类似)
        var x = 10
        x = 20
        
        // 小数：Double 精度高(OC 中 CGFloat 类似)
        let y = 10.5
        let v = UIView()
        
        print(x)
        print(y)
        print(v)
    }
}

