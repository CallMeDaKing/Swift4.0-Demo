//: Playground - noun: a place where people can play

import UIKit


//swift 中  键集合   值集合  类型 Dictionary  泛型集合
/*
    字典总结 ：1 定义字典
             2.对可变字典的增删改查
             3 .遍历key value
             4. 字典的合并
 
 */
//1. 如何定义字典

//1.1 定义不可变字典 使用let 修饰   swift中 Int 和String 类型是结构体，是可以放到字典中的 编译器如何区分数组和字典？ 编译器会根据中括号中，是一个个元素还是键值对来区分
let dict  = ["name":"king","age":18] as [String : Any]  //:如果字典中的键值 都是string类型 Dictionary <String,Any> 可以省略 ,如果string对应的值是不确定的类型会报错，需要在后面进行转为as [String : Any]
let dict1 :[String : Any] = ["name":"king","age":18]//推荐第二种
//不能对不可变字典进行任何修改
//1.2 定义可变字典
var dictM = Dictionary<String,Any>()
var dictM1 = [String:Any]()

//2 .对可变字典的基本操作
//2.1 给字典添加元素
dictM["age"] = 18
dictM["score"] = 99
dictM["height"] = 1.88
dictM["name"] = "king"

//2.2 删除元素
//dictM.removeAll()  删除所有元素
dictM.removeValue(forKey: "score")
//修改元素
dictM.updateValue("ln", forKey: "name")
print(dictM)
//2.3 查找元素
dictM["name"]

//3.遍历我们的字典
//3.1 便利字典中所有的key
for  key in dict.keys{
    print(key)
}
//3.2 遍历字典中所有的value
for value in dict.values{
    print(value)
}
//3.3 遍历键值对
for( key , value ) in dictM{
    print(key)
    print(value)
}
//4.字典的合并
// 如果两个字典 即使类型相同也不可以直接相加
var dict2 :[String : Any] = ["name":"li","age":15]
let dict3 :[String : Any] = ["score":"55","phone":"111"]
for (key,value) in dict3{
    dict2[key] = value
}
print(dict2)

