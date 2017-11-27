//: Playground - noun: a place where people can play

import UIKit

/*
    枚举定义了相关类型的一组相关的值，可以在代码中以一个安全的方式使用值
    在OC /C 语言中枚举指定相关名称为一组的整形值
    在Swift中，枚举更加灵活，不必给每个枚举成员提供一个值，也可以提供一个字符串，一个字符，或者一个整形值或浮点值
    枚举的用法
        使用enum 关键字并且把他们的整个定义放在一个大的括号内
 */
//枚举类型的语法
enum someEnumration{
//    enumeration defintion goes here
}
// 定义   网络请求枚举
enum MethodType {
    case get
    case post
    case put
    case delete
}
// 如果想确定枚举类型的值可以像下面这样声明
enum MethodType1 : String {
    case get = "get"
    case psot = "post"
    case put = "put"
    case delete = "delete"
    
}
//2.创建一个具体的值  赋值
let type :MethodType = .get
let type2 = MethodType.post
let type3 = MethodType1.get
let type4 = MethodType1(rawValue: "put")  //结果可能是nil
let type5 = type4?.rawValue

let btn = UIButton()
btn.setTitle("king", for: .normal)

//3.给枚举赋值

enum direction : Int{
    case east = 0
    case west = 1
    case north = 2
    case sourth = 3
}
let d :direction = .east
let d1 = direction(rawValue: 1)


//4.枚举定义方式二
//
//enum Type{
//    case post ,get ,put ,delete
//}

enum Type : Int{
    case post = 0 ,get ,put ,delete   //后面会自动加上索引 ，只限在 Int类型
}
