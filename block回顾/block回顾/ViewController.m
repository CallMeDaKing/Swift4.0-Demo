//
//  ViewController.m
//  Block回顾
//
//  Created by li king on 2017/11/30.
//  Copyright © 2017年 li king. All rights reserved.
//

#import "ViewController.h"
#import "NetTools.h"
@interface ViewController ()
//对象属性必须有对象
@property (nonatomic,strong)NetTools * tools;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tools = [[NetTools alloc]init];
}

//block 常用在网络请求
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.tools loadData:^(NSString * jsonData) {
//        避免循环引用的可以让self 用weak 修饰
        //并不会有循环引用
//        self.view.backgroundColor = [UIColor redColor];
    }];
}
-(void)dealloc{
    NSLog(@"viewcontroller -- dealloc ");
}
@end
