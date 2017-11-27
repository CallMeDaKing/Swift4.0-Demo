//: Playground - noun: a place where people can play

import UIKit

//元组
/*
 数据结构 ，在数学中应用广泛
 类似于数组或者字典
 可用于定义一维数组
 组成元祖的数据都被称之为元素
 
 */

//1使用数组  个人信息保存
let infoArray :[Any] = ["king",18,1.99]
let arraName =  infoArray[0] as! String //取出数组名字 现在是any 类型需要as！String,转为string类型再进行相关操作
print(arraName.count)   // 操作稍微繁琐
//2 使用字典保存个人信息
let  infodic : [String : Any] = ["name":"li" ,"age" :15]
let dicname = infodic["name"]  //取出的是any 类型  可选
// 同样需要转为 类型， 在进行操作

//3 使用元组保存信息
/*
 
 */
let infotuple = ("king" ,16, 1.88)
let tupleName = infotuple.0
let tupleage = infotuple.1   //自动返回对应的类型 Int
tupleName.count // 可以直接操作 =
//写法二 在每个元素前面  起别名
let tuple1 = (name : "king" , age :16, heigt: 1.88)
//写法三 推荐
let (name ,age ,height) = ("king" ,16, 1.88)
//取出元素直接
name
age
height

