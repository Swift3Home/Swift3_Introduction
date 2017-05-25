//
//  ViewController.swift
//  003-Xcode 8.0 的特性
//
//  Created by lichuanjun on 2017/5/20.
//  Copyright © 2017年 lichuanjun. All rights reserved.
//

import UIKit

// 从 Xcode 8.0 开始，目前所有的插件都无法工作！
class ViewController: UIViewController {

    // MARK: - 视图生命周期
    // MARK: 视图加载完成
    
    /// option + cmd +/ 增加文档注释
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let v = UIView(frame: CGRect(x: 0, y: 20, width: 200, height: 150))
        
        // color + 回车
        v.backgroundColor = #colorLiteral(red: 1, green: 0.2001414562, blue: 0.2579758544, alpha: 1)        // TODO: 应该设置新的颜色
        
        view.addSubview(v)
        
        // 图像视图
        let iv = UIImageView(image: #imageLiteral(resourceName: "Green-Leaf"))  // FIXME: 应该更改头像
        iv.center = view.center
        view.addSubview(iv)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

