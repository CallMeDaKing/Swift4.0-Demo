//
//  NetTools.swift
//  网易News
//
//  Created by CallMeDaKing on 2017/12/4.
//  Copyright © 2017年 CallMeDaKing. All rights reserved.
//

import UIKit


enum Method{
    case get
    case post
}
class NetTools: NSObject {
    //Mark : --类方法 相当于OC中的 + 开头的类方法
    class func requestData(URLString:String, type:Method,parameters:[String: Any]? = nil ,finishedCallBack: @escaping(_ result:Any)->()){
        
//        let method = type == .get？
    }
}
