//
//  FirstClass.swift
//  在两个swift文件中类扩展
//
//  Created by CallMeDaKing on 2017/12/2.
//  Copyright © 2017年 CallMeDaKing. All rights reserved.
//

import UIKit

class FirstClass: NSObject {
    private var name : String = ""
    
    func testFunction(){
        print("访问到了")
    }
}
extension FirstClass{
    
    func Ftest()  {
        self.name = "li"    //同一个swift 文件中可以访问类中的私有成员
    }
}

