//: Playground - noun: a place where people can play

import UIKit


/*
 总结 ;
    协议的定义
    如和让类遵守协议 分有继承  和没有继承
    协议在我们的代理设计模式中如何使用
    协议中方法的可选性  protocal 需要在前面加上 @objc
 */
//协议定义  和定义类结构体相似

protocol Sportprotocal {
    // 协议相关方法
    
    //默认情况下协议的方法 在遵守协议的类里面 必须要实现
    func playBasketball()
    func PlayFootBall()
}

// 遵守协议   冒号  + 协议
class teacher  : Sportprotocal{
    
    func playBasketball() {
        print("打篮球")
    }
    func PlayFootBall() {
        print("踢足球")
    }
}
//如果是继承的类，在 NSobject 后面用  ， 分隔
class student: NSObject,Sportprotocal {
    
    func playBasketball() {
        print("打篮球")
    }
    func PlayFootBall() {
        print("踢足球")
    }
}

//2 。协议在代理设计模式中的使用
//代理方法后面声明 可以遵守该协议的类型 为class 类型，如果不写class  ,则默认可以被枚举类型 和结构体类型 继承而weak 不能修饰枚举类型，也不能修饰结构体类型。所以会报错
protocol buyTicketDelegate  : class {
    
    func buyTicket()
}

class Person{
    //定义代理属性  代理最好使用弱引用 weak
    weak var delegate : buyTicketDelegate?
    func gotoBeiJing(){
        
        delegate?.buyTicket()
    }
    
}

//如何让协议中的方法是可选方法 /如果协议中有可选的方法，必须 testprotocal代理方法 前面加上@objec
@objc protocol testprotocal {
//    Optional 属于OC的特性
    func test()
    
}

class Dog : testprotocal{
    func test() {
        
    }
}
