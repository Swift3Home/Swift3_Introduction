//
//  ViewController.swift
//  007-可选项的判断
//
//  Created by lichuanjun on 2017/5/21.
//  Copyright © 2017年 lichuanjun. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // unexpectedly found nil while unwrapping an Optional value
//        demo1(x: 10, y: nil)
        demo4(name: "老王", age: 18)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func demo4(name: String?, age: Int?) {
        
        // 非空的name 和age 仅在{} 内有效！
        if let name = name, let age = age {
            print(name + String(age))
            print("-----------")
        }
        
        // guard let & if let 的技巧
        // 使用同名的变量接收值，在后续使用的都是非空值，不需要解包
        // 好处，可以避免名字的烦恼！
        guard let name = name, let age = age else {
            print("name 或者 age 为 nil")
            
            return
        }
        
        print(name + String(age))
    }
    
    
    // MARK: - guard 守护
    func demo3(){
        let oName: String? = "老王"
        let oAge: Int? = 10
        
        // guard let 守护一定有值，如果没有值直接返回
        guard let name = oName, let age=oAge else {
            print("name 或者 age 为 nil")
            
            return
        }
        
        // 代码执行至此，name和age一定有值！
        // 通常判断是否有值之后，会做具体的逻辑实现，通常代码多！
        // 如果用if let 凭空多了一层分支，guard 是降低分支层次的办法
        // guard 的语法是Swift 2.0 推出的！
        print(name + String(age))
    }
    
    // MARK: - if let / var 连用语法，目的就是判断值
    func demo2() {
        let oName: String? = "老王"
        let oAge: Int? = 10
        
        if oName != nil && oAge != nil {
            print(oName! + String(oAge!))
        }
        
        if let name = oName, let age = oAge {
            // 进入分支之后，name和age 一定有值，不需要解包
            // name 和 age 的作用域仅在 {} 中
            print(name + String(age))
        } else {
            print("name 或者 age 为 nil")
        }
        
        if var name = oName, let age = oAge {
            name = "老李"
            print(name + String(age))
        } else {
            print("name 或者 age 为 nil")
        }
    }
    
    func demo1(x: Int?, y: Int?) {
        /**
         ?? 是一个简单的 三目
         - 如果有值，使用值
         - 如果没有值，使用 ?? 后面的值替代
        */
        print((x ?? 0) + (y ?? 0))
        
        let name: String? = "老王"
        
        print((name ?? "") + "你好")
        
        // ?? 操作符号的优先级`低`，在使用的时候，最好加上()包一下
        print(name ?? "" + "你好")
    }
    
    func demo(x: Int?, y: Int?) {
        
        // 1. 强行解包有风险
        // print(x! + y!)
        
        // 2. 使用if判断
        // 但是：如果直接使用if，一不小心，会让代码很丑陋
        if x != nil && y != nil {
            print(x! + y!)
        } else {
            print("x 或者 y 为nil")
        }
    }
}

