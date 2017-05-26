//
//  ViewController.swift
//  012-字典
//
//  Created by lichuanjun on 2017/5/26.
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
    // 4. 合并
    func demo4() -> () {
        
    }
    
    // 3. 遍历
    func demo3() -> () {
        
    }

    // 2. 增删改
    func demo2() -> () {
        
    }
    
    // 1. 定义
    func demo1() -> () {
        // OC 定义字典使用 {}
        // Swift 中同时使用 []
        
        // [KEY: VALUE] -> [String: Any]
        let dict = ["name": "张", "age": 18] as [String : Any]
        print(dict)
        
        // 定义字典的数组 - 提示，这种格式在开发使用的最多
        let array = [
            ["name": "张", "age": 18],
            ["name": "李", "age": 108]
        ]
        print(array)
        
        // 提问：什么类型的字典使用最多？[String: AnyObject]
        // 因为从网络上获取的 JSON 有一个要求，KEY 必须是 NSString
        /**
         An object that may be converted to JSON must have the following properties:
         - Top level object is an NSArray or NSDictionary
         顶级节点必须是字典或者数组
         - All objects are NSString, NSNumber, NSArray, NSDictionary, or NSNull
         所有的对象必须是 NSString, NSNumber, NSArray, NSDictionary, or NSNull
         如果是 数组 或者字典，内部同样只能包含 String, Number, NSNull
         - All dictionary keys are NSStrings
         所有的 key 必须都是 NSString
         - NSNumbers are not NaN or infinity
         NSNumber 不能为空或者无穷大
         
         在 JSON 中字符串有引号，Number 没有 引号，空值 null
         */
    }
}

