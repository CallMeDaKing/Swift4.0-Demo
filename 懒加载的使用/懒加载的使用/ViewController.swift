//
//  ViewController.swift
//  懒加载的使用
//
//  Created by li king on 2017/11/30.
//  Copyright © 2017年 li king. All rights reserved.
//

import UIKit
/*
 懒加载 有两个特点    建议项目中的对象都使用懒加载
        用到时 才会记载
        多次使用只需要加载一次
 */
class ViewController: UIViewController {
    
    //懒加载的写法
    
    //使用普通方式创建变量弊端，程序一加载，所有的代码执行， 便初始化创建了一个数组，加到内存中，但是我可能暂时使用不到，这个时候会占用内存空间。
    var names : [String] = ["king"]
    
    //更常用的写法
    lazy var name : [String] = {
        let name = ["king","li"]
        print("-------验证是否懒加载----")
        return name
    }()  //执行闭包
    
    
    //对象建议都懒加载 方式一 ，但此时是没法给对象赋值属性的
    //    lazy var btn = UIButton()
    
    
    
    // 方式二 在懒加载的同时给对象设置属性
    lazy var btn : UIButton = {
        let btn  = UIButton()
        
        //在这里懒加载的同时进行属性添加 等
//        btn.setTitle(<#T##title: String?##String?#>, for: <#T##UIControlState#>)
        
        return btn
        
    }() //执行闭包
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        print(name.count)
    }



}

