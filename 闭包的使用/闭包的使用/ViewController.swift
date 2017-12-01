//
//  ViewController.swift
//  闭包的使用
//
//  Created by li king on 2017/11/30.
//  Copyright © 2017年 li king. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
//只要是自己创建类，不需要导入任何东西
    var httptools : NetTools?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        httptools = NetTools()
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        //解决循环引用的方案
        
       /* 解决循环引用的方式 一 但写起来比较麻烦 不常用
        weak var weakSelf : ViewController? = self  //在这里不用指定weakSelf类型  加入指定类型应该是 ViewController? 之所以不是ViewController 的原因就是，weak 对象有个特点 当对象释放掉以后指向nil , 而只有可选类型才能指向nil .所以使用ViewController?
        httptools?.loadData({( jsonData : String) in
            print("获取到数据:\(jsonData)")
//            可选链赋值
            weakSelf?.view.backgroundColor = UIColor.red //有没有循环引用？
        })
           */
        
       /*
        //解决循环引用的方式二 在 闭包前面部分加上中括号。 中括号内 weak self 在使用的时候 使用self?.  可选链方式
        
        httptools?.loadData({[weak self] (jsonData : String) in
            self?.view.backgroundColor = UIColor.red
        })
        */
        
        
        //解决循环引用 方式三 unowned 类似 unsafe  unretained （很容易产生野指针）
        //需要保证当前对象不被销毁掉 否则有可能会产生野指针。 好处就是需要时使用可选链 ？
        httptools?.loadData({[unowned self] (jsonData : String) in
            self.view.backgroundColor = UIColor.red
        })
        
        //尾随闭包 的写法
        //如果在我们的函数中， 闭包是最后一个参数，那么可以写成尾随闭包 把{} 里面的数据放到（）后面
        //如果是唯一的参数 前面的（） 也可以省略掉
        httptools?.loadData(){[unowned self] (jsonData : String) in
            self.view.backgroundColor = UIColor.red
        }
    }
//    相当于oc 中的delloc   析构函数
    deinit {
        print("对象消失掉了")
    }
}


