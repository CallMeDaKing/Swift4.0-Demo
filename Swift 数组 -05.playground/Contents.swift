//: Playground - noun: a place where people can play

import UIKit
/*
    s数组的使用
    1 .数租的定义 let  var
    2. 对可变数组的基本操作
    3.对数组的遍历方式 四种   长度 count   index item
    4.数组的合并， 相同类型元素可以。其他情况不可以
 */
//数组  swift 中类型是个Array类型  是个泛型几何

//1 数组的定义
//1.1 定义不可变数组  有两种方法 使用let 修饰  不能再进行操作的 类型可以省略，会自动推到
let array : Array<String> = ["king","li"]   //方法一
let array1 : [String] = ["king","li"]                //方法二 （推荐）

//2 对可变数组的基本操作  l类型可省略
var arrayM : [String]  = Array<String>()
var arrayM1 : [String] = [String]()

// 增删改查
//2.1 往数组中添加元素
arrayM.append("hello")
arrayM.append("king")
arrayM.append("li")
//2.2 删除元素
arrayM.remove(at: 0) // 根据下标删除
//arrayM.removeAll()    删除所有元素
//2.3 修改元素
arrayM[0] = "hello"
arrayM
//2.4获取元素
let item = arrayM[1]
//3.对数组进行遍历  讲四种常用的遍历方式
//3.1 获取数组的长度
let count = arrayM.count
//3.2 对数组进行遍历
for i in 0..<count{
    print(arrayM[i])
}
//3.3 不需要获取下标值
for item in arrayM{
    print(item)
}
//3.4 有下标值和数组元素  使用枚举类型
//需要注意的是 在swift4.0 中 原来的的enumerate 变成了enumerated   reverce  变成了reverced
for (index, item) in arrayM.enumerated(){
    
    print(index)
    print(item)
}
//4.数组的合并
//如果两个数组中存放的是相同类型的元素，在swift中可以对数组直接进行合并，不同类型不可以
let array2 = ["king","lo"]
let array3 = ["hello","king"]
let resultArray = array2 + array3
//
