//
//  ViewController.swift
//  011-数组
//
//  Created by lichuanjun on 2017/5/25.
//  Copyright © 2017年 lichuanjun. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        demo5()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - 数组的合并
    func demo5() {
        var array1 = ["张三", "小芳", "小羊"]
        
        let array2 = ["老李", "1", "2"]
        
        // 将array2 的内容合并到 array 中
        // *** 注意：要合并数组的两个类型必须一致
        array1 += array2
        
        print(array1)
        
        // [Stirng]
        var array3: [NSObject] = ["张三", "小芳", "小羊"] as [NSObject]
        // [NSObject]
        let array4 = ["老李", "1", "2", 180] as! [NSObject]
        array3 += array4
        
        print(array3)
    }
    
    // MARK: - 数组的容量
    func demo4() {
        // 定义一个数组，指定类型是 存放 Int 的数组，但是没有初始化
//        var array: [Int]
        
        // 给数组进行初始化
//        array = [Int]()
        
        // 以上两句代码可以合并成一句
        var array = [Int]()
        print("初始容量 \(array.capacity)")
        
        for i in 0..<8 {
            array.append(i)
            
            print("\(array) 容量 \(array.capacity)")
        }
    }
    
    // MARK: - 数组的增/删/改
    func demo3() {
        // OC 中数组分 可变NSMutableArray(var) / 不可变 NSArray(let)
        
        var array = ["张三", "小芳", "小羊"]
        
        // 追加元素
        array.append("老王")
        print(array)
        
        // 修改，通过下标定位
        array[0] = "小王"
        print(array)
        
        // 数组越界 - Index out of range
        //array[5] = "xxx"
        //print(array)
        
        // 删除
        array.remove(at: 3)
        print(array)
        
        // 删除全部，并且保留空间
        array.removeAll(keepingCapacity: true)
        print("\(array) \(array.capacity)")
    }

    // MARK: - 数组的遍历
    func demo2() {
        let array = ["张三", "小芳", "小羊"]
        
        // 1. 按照下标遍历
        print("--- 按下标遍历")
        for i in 0..<array.count {
            print(array[i])
        }
        
        // 2. for in 遍历元素
        print("--- for in 遍历元素")
        for s in array {
            print(s)
        }
        
        // 3. enum block 遍历，同时遍历下标和内容
        print("--- enum block 遍历，同时遍历下标和内容")
        for e in array.enumerated() {
            print(e)
            print("\(e.offset) \(e.element)")
        }
        
        // 4. 遍历下标和内容2
        // n 索引下标
        // c [String] 数组 n 对应的 String 元素
        // 其中 n/c 的名字可以随便写
        print("--- 遍历下标和内容2")
        for (n, c) in array.enumerated() {
            print("\(n): '\(c)'")
        }
        
        // 5. 反序遍历
        print("--- 反序遍历")
        for s in array.reversed() {
            print(s)
        }
        
        // 5. 反序索引&内容
        print("---  反序索引&内容")
        // 错误的反序，索引和内容不一致
        for (n, s) in array.reversed().enumerated() {
            print("\(n) \(s)")
        }
        
        print("---  正确的反序")
        // 先枚举，再反序
        for (n, s) in array.enumerated().reversed() {
            print("\(n) \(s)")
        }
    }
    
    // MARK: - 数组的定义
    func demo1() {
        
        // OC 使用[]定义数组，Swift一样，但是没有`@`
        // 自动推导的结果 [String] -> 表示数组中存放的都是 String
        // 跟 OC 中的数组指定泛型类似
        let array = ["张三", "小芳", "小羊"]
        print(array)
        
        // [Int] -> 表示存放的都是 Int
        // Swift 中基本数据类型不需要包装
        let array2 = [1, 2, 3, 4, 5]
        print(array2)
        
        // CG 结构体
        let p = CGPoint(x: 10, y: 300)
        // [CGPoint]
        let array3 = [p]
        print(array3)
        
        // 混合数组：开发中几乎不用，因为数组是靠下标索引
        // 如果数组中的类型不一致，自动推导的结果 [NSObject]
        // 在Swift 中还有一种类型 [AnyObject] -> 任意对象
        // 在Swift 中一个类可以没有任何`父类`
        //  *** 在混合的数组中，CG 结构体需要包装
        let array4 = ["张三", 1, NSValue(cgPoint: p)] as [Any]
        print(array4)
    }

}

