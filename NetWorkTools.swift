//
//  NetWorkTools.swift
//  Alamofire网络请求Test
//
//  Created by li king on 2017/11/20.
//  Copyright © 2017年 li king. All rights reserved.
//

import UIKit
import Alamofire
enum MethodType {
    case GET
    case POST
}

class NetWorkTools {   //如果不使用 NSObject 的相关属性， 可以不用集成NSObject .使工具更加轻量级
    class func requestData(type : MethodType ,URLString :String ,parameters :[String : NSString]? = nil ,finishedCallBack : @escaping(_ result : AnyObject) ->()){
        //1。获取类型
        let method = (type == .GET) ? HTTPMethod.get : HTTPMethod.post
        //2 .发送网络请求
        Alamofire.request(URLString, method: method, parameters: parameters).responseJSON { (response) in
            //3.获取结果
            guard let result = response.result.value else{
                
                print(response.result.error!)
                return
            }
            //4.将结果回调
            finishedCallBack(result as AnyObject)
        }
    }
    
}
