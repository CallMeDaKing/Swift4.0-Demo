//
//  NetTools.m
//  Block回顾
//
//  Created by li king on 2017/11/30.
//  Copyright © 2017年 li king. All rights reserved.
//

#import "NetTools.h"
//写一个类扩展
@interface NetTools()
@property (nonatomic,copy) void (^finishedCallback)(NSString *);
@property(nonatomic ,copy) NSString * name ;
@end
@implementation NetTools

-(void)loadData:(void(^)(NSString *)) finishedCallback{
//    self.finishedCallback = finishedCallback;  这样会造成循环引用， 
//    1发送网络的异步请求
    dispatch_async(dispatch_get_global_queue(0, 0), ^{
        NSLog(@"已经发送了网络请求");
        //    2.回到主线程
        dispatch_sync(dispatch_get_main_queue(), ^{
            NSLog(@"回到了主线程");
        });
        //    3.获取数据，并且将数据回调出去
        finishedCallback(@"json数据");
    });

    

}
@end
