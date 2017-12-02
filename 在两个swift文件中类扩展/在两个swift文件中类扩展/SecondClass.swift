//
//  SecondClass.swift
//  在两个swift文件中类扩展
//
//  Created by CallMeDaKing on 2017/12/2.
//  Copyright © 2017年 CallMeDaKing. All rights reserved.
//

import UIKit

class SecondClass: NSObject {

}
extension FirstClass{
    
    func test() {
//        name = "king" 不好意思，私人成员不能在他们的文件之外被访问  报错 name' is inaccessible due to 'private' protection level
    }
    
}
