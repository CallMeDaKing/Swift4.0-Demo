//: Playground - noun: a place where people can play

import UIKit

// 关于可选类型， 如果一个类型有可能为nil ,那么这个标识符类型一定是个可选类型

// 1 .将字符串转为Int 类型 只有字符串是 1234类型才可以转成Int 类型
let str : String = "123"
let number = Int(str)  //可选类型

//2 根据文件名称 ：123.plist 获取文件路径
let path : String? = Bundle.main.path(forResource: "123.plist", ofType: nil)  //路径可能是个字符串，也可能是nil  ,因为路径不一定能获取到
//3 将字符窜转为NSURL
//如果字符串中有中文，转化就是不成功的， 返回为nil   swift 3.0
let url : URL? = URL(string: "http://www.baidu.com")

//4. 从字典中取出元素
let dict : [String : Any] = ["name":"king" , "age" : 12]
let value = dict["name"]  // value 不加类型的是时候是可选类型，因为有可能 我们在取值的时候取不到值，比如，dict["neme"]  我们的键输入有误。

