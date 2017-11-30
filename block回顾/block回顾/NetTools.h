//
//  NetTools.h
//  Block回顾
//
//  Created by li king on 2017/11/30.
//  Copyright © 2017年 li king. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NetTools : NSObject
//传一个用于回调的block
-(void)loadData:(void(^)(NSString *)) finishedCallback;
@end
