//
//  ViewController.swift
//  010-字符串
//
//  Created by lichuanjun on 2017/5/23.
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
    // MARK: - 字符串的子串
    func demo4() {
        // 建议： - 一般使用NSString 作为中转，因为Swift取子串的方法一直在优化
        let str = "我们一起去飞"
        
        // 1. NSString
        let ocStr = str as NSString
        let s1 = ocStr.substring(with: NSMakeRange(2, 3))
        
        print(s1)
        
        // 2. String 的 3.0 方法
        // let r = 0..<5
        // str.substring(with: <#T##Range<String.Index>#>)
        // Index
        //startIndex position == 0
        print(str.startIndex)
        // endIndex position == str.length
        print(str.endIndex)
        
        let s2 = str.substring(from: "我们".endIndex)
        print(s2)
        
        let s3 = str.substring(from: "abc".endIndex)
        print(s3)
        
        // 取子字符串的范围
        guard let range = str.range(of: "一起") else {
            print("没有找到")
            return
        }
        // 一定找到的范围
        print("-----")
        print(range)
        print(str.substring(with: range))
    }
    
    // MARK: - 格式化
    func demo3() {
        let h = 8
        let m = 9
        let s = 6
        
        let dateStr = "\(h):\(m):\(s)"
        print(dateStr)
        // 使用格式 字符串格式化
        let dateStr1 = String(format: "%02d:%02d:%02d", h,m,s)
        print(dateStr1)
    }
    
    // MARK: - 拼接 NSString stringWithFormat:xxx
    func demo2() {
        let name = "老王"
        let age = 10
        let title: String? = "BOSS"
        let point = CGPoint(x: 100, y: 200)
        // \(变量/常量)
        // 拼接字符串需要注意 可选项 Optional
        let str = "\(name) \(age) \(title ?? "") \(point)"
        print(str)
    }
    
    // MARK: - 字符串的长度
    func demo1() {
        let str = "hello world你好"
        // 1>返回指定编码的对应的字节数量
        // UTF8 的编码(0-4个)，每个汉字是 3 个字符
        print(str.lengthOfBytes(using: .utf8))
        
        // 2>字符串的长度 - 返回字符的个数(推荐使用)
        print(str.characters.count)
        
        // 3> 使用NSString中转
        /**
         str as NSString
         OC 的写法 (NSString *)
         Swift 中可以使用 `值 as 类型`类型转换
         */
        let ocStr = str as NSString
        print(ocStr.length)
        
    }
    
    // MARK: - 字符串的遍历
    func demo() {
        // NSString 不支持以下方式遍历
        let str: String = "我要飞的更高"
        
        for c in str.characters {
            print(c)
        }
    }
}

