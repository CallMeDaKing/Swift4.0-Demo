//: Playground - noun: a place where people can play

import UIKit

//析构函数  就是以前OC中 的delloc 方法  C++  中也叫析构方法
//swift 会自动引用计数， （ARC）处理内存管理
//引用计数为0 时，系统会自动调用，析构函数（不可以手动调用）
//通常在析构函数中释放一些资源，比如一处通知等操作

//析构函数的写法
class Person {
    
    var name : String = ""
    var age :Int = 0
    
    //重写析构函数监听对象的销毁
    
    deinit {
        print("Person 已经被销毁掉了----------")
    }
}
var  p:Person? =  Person()

// p = nil    不能直接这么操作 应为 let 类型不可改变 ，改为 var也不要可以，因为只有可选类型才可以指向nil 其他类型都不可以

p = nil

