//
//  ViewController.m
//  OC演练代码
//
//  Created by lichuanjun on 2017/5/23.
//  Copyright © 2017年 lichuanjun. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self demoSwitch];
    
    UILabel *l = [[UILabel alloc] initWithFrame:CGRectMake(0, 20, 100, 40)];
    l.text = @"hello";
    [self.view addSubview:l];
    
    {
        UILabel *l = [[UILabel alloc] initWithFrame:CGRectMake(0, 60, 100, 40)];
        l.text = @"world";
        [self.view addSubview:l];
    }
    
    // 扩展知识点：要能看懂，在一些老的代码中会有
    // {} 包装代码，() 是表示执行
    // 工作中，看到的最多的表现代码是 UITableView
    UILabel *myLabel = ({
        
        UILabel *l = [[UILabel alloc] initWithFrame:CGRectMake(0, 200, 100, 40)];
        l.text = @"hello world";
        [self.view addSubview:l];
        
        // 最后的 l 会给myLabel 设置数值
        l;
    });
    
    NSLog(@"%@",myLabel);
    
    
    UITableView *tv = ({
        UITableView *tableView = [[UITableView alloc] initWithFrame:CGRectZero style:UITableViewStylePlain];
        
        // ...
        
        tableView;
    });
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)demoSwitch {
    /**
     1. 分支值类型必须是整数
     2. 每个语句都需要一个 break
     3. 如果要穿透
     4. 如果要定义句柄变量，需要{}
     */
    int num = 10;
    switch (num) {
        case 9:
        case 10:
        {
            NSString *name = @"zhang";
            
            NSLog(@"优 %@",name);
        }
            break;
            
        default:
            NSLog(@"一般");
            break;
    }
}

@end
