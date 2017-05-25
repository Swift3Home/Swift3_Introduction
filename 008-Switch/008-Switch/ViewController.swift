//
//  ViewController.swift
//  008-Switch
//
//  Created by lichuanjun on 2017/5/23.
//  Copyright © 2017年 lichuanjun. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
//        demo(num: 8)
        demo1()
        
        demo2()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func demo2() {
        let score = "优"
        
        switch score {
        case "优":
            let name = "学生"
            print(name + "80~100分")
        case "良": print("70~80分")
        case "中": print("60~70分")
        case "差": print("不及格")
        default: break
        }
    }
    
    // switch 中同样能够赋值和使用 where 子句
    func demo1() {
        let point = CGPoint(x: 10, y: 10)
        switch point {
        case let p where p.x == 0 && p.y == 0:
            print("中心点")
        case let p where p.x == 0:
            print("Y轴")
        case let p where p.y == 0:
            print("X轴")
        case let p where abs(p.x) == abs(p.y):
            print("对角线")
        default:
            print("其他")
        }
    }

    /**
     1. switch 可以真对任意类型的值进行分支，不再局限在整数
     2. switch 一般不需要 break
     3. switch 如果要多值，使用`,`
     4. 所有的分支至少需要一条指令，如果什么都不干，才使用break
     */
    func demo(num: Int) {
        
        switch num {
        case 9, 10:
            print("优")
        default:
            print("一般")
        }
    }
}

