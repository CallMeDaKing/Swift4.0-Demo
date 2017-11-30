//
//  NetTools.swift
//  闭包的使用
//
//  Created by li king on 2017/11/30.
//  Copyright © 2017年 li king. All rights reserved.
//

import UIKit

class NetTools {
    
    //
    var finishCallBack : ((_ jsonData : String)->())?
    
    //闭包类型 : (参数列表)->(返回值类型)
    //@escaping 逃逸 ，如果在swif 开发中，闭包不是在当前方法中直接使用，而是在另外一个闭包中使用时 即必须加 @escaping  。否则不用加
//    如果不想让外部看到闭包内的参数 在参数前面加上 _
    func loadData(_ finishCallBack : @escaping (_ jsonData : String)->() ){
//        发送异步请求
        self.finishCallBack = finishCallBack //netTools 对闭包产生了强引用。会导致循环引用， 查看deinit 方法并没有输出任何信息，说明没有销毁产生了循环引用。
        
        DispatchQueue.global().async {
            print("发送异步请求：\(Thread.current)")
            
            DispatchQueue.main.sync {
                print("回到主线程:\(Thread.current)")
                
                finishCallBack("json数据")
            
            }
        }
//        2回到主线程
        
//        3进行回调
    }
}
