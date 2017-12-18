//
//  ViewController.swift
//  访问权限
//
//  Created by CallMeDaKing on 2017/12/2.
//  Copyright © 2017年 CallMeDaKing. All rights reserved.
//

import UIKit

/*
    访问权限
 
 1 internal  : 内部的   默认情况下所有的访问权限 都是internal  在本模块中可以访问
 2 private   : 私有的   只有在本类中可以访问
 3 fileprivate: swift3.0  是指本文件中的可以访问
 4 open      :公开的 跨模块 项目 包 都是可以访问的
 swift 4.0 中对权限又做了调整
 
 */
class ViewController: UIViewController {
//    name 是成员属性 ，实例属性
    var name : String = ""
    private var age : Int = 0
    fileprivate var height :Int = 3
    override func viewDidLoad() {
        super.viewDidLoad()
        
        name = "king"
        age = 18
        print(age)
        
//        创建一个view   view 是UIKit中的控件 ， 我在这里创建，就是夸包引用，因为函数前面有open
        let view = UIView()
    }

}
class person {
    func test (){
        let VC  = ViewController()
        VC.height  = 3   //是可以访问的，虽然不再同一个类中，但是在同一个文件中
    }
    
}
