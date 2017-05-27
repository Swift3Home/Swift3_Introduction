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
        demo4()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    // 4. 合并
    func demo4() -> () {
        var dict1 = ["name": "张", "age": 18, "title": "老板"] as [String : Any]
        var dict2 = ["name": "大瓜", "height": 1.8] as [String : Any]
        
        // 将dict2 合并到dict1
        // 字典不能相加 dict1 = dict1 + dict2
        
        // 思路，遍历dict依次设置
        // 如果key存在，会修改
        // 如果key不存在，会新增
        for e in dict2 {
            dict1[e.key] = dict2[e.key]
        }
        print(dict1)
    }
    
    // 3. 遍历
    func demo3() -> () {
        let dict = ["name": "张", "age": 18, "title": "老板"] as [String : Any]
        // 元组 (key: String, value: Any)
        for e in dict {
            print("\(e.key) \(e.value)")
        }
        
        print("------")
        
        /**
         前面的是 KEY,
         后面的是 VALUE
         
         具体的名字可以随便写
         
         OC 遍历 for in 只能获取到 KEY
         */
        for (key, value) in dict {
            print("\(key) \(value)")
        }
        
        print("------")
        for (aaa, bbb) in dict {
            print("\(aaa) \(bbb)")
        }
    }

    // 2. 增删改
    func demo2() -> () {
        // 可变 var / 不可变 let
        var dict = ["name": "张", "age": 18] as [String : Any]
        
        // 新增 - 如果KEY不存在，就是新增
        dict["title"] = "大哥"
        print(dict)
        
        // 修改 - 字典中，是通过KEY取值，KEY在字典中必须是唯一的
        // 如果KEY存在，就是修改
        dict["name"] = "大西瓜"
        print(dict)
        
        // 删除 - 直接给定 KEY
        // *** 科普，字典是通过KEY来定位值的，KEY 必须是可以`hash 哈希` MD5 一种
        // hash 就是讲字符串变成唯一的整数，便于查找，提高字典遍历的速度
        dict.removeValue(forKey: "age")
        print(dict)
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

