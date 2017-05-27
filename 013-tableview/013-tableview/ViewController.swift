//
//  ViewController.swift
//  013-tableview
//
//  Created by lichuanjun on 2017/5/27.
//  Copyright © 2017年 lichuanjun. All rights reserved.
//

import UIKit

// @interface ViewController() <UITableViewDataSource>
class ViewController: UIViewController, UITableViewDataSource {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        setupUI()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - UITableViewDataSource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellId", for: indexPath)
        
        // 提示：textLabel 是可选的
        // 代码中 ？ 是自动带的，如果 textLabel 有，就使用，如果没有，就什么也不做
        cell.textLabel?.text = "Hello ~ \(indexPath.row)"
        
        return cell
    }

    func setupUI() {
        // 1. 创建表格
        let tv = UITableView(frame: view.bounds, style: .plain)
        // 2. 添加到视图
        view.addSubview(tv)
        
        // 3. 注册可重用 cell [UITableViewCell class]
        tv.register(UITableViewCell.self, forCellReuseIdentifier: "cellId")
        // 4. 设置数据源
        // Swift 中没有遵守协议是一个错误
        tv.dataSource = self
    }
}

