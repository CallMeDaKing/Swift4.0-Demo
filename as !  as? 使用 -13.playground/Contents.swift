//: Playground - noun: a place where people can play

import UIKit

// as ？ ！  将 any 类型转为具体类型
//1 as

let str = "king"
( str as NSString).substring(to: 2)  // as  类型转换

//2 as ? 转成可选类型

let dict :[String :Any] = ["name" : "king" ,"age" : 12]
let tempName = dict["name"]  //可选类型

//通过as?转为具体类型 系统会自动判断是否可以转为String类型，如果不成功返回是个nil

let name = tempName as? String
if let name = name {
    print(name) //可选绑定
}
//方式二
if let name = dict["name"] as? String{
    print(name)
}

// 3 as! 使用 as! 转为具体类型  将类型转为具体类型， 如果转化不成功则程序直接崩溃 建议 如果能确定转化成功再用  as!

let tempName1 = dict["name"]
let name1 = tempName as! String


