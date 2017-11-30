//: Playground - noun: a place where people can play

import UIKit

/*
 总结 ：
    从可选链中取值
    给可选链赋值
    调用可选链的方法
 */
//可选链 ：多个可选类型组成的链条就是可选链

class Person{
    var name : String = ""
    var dog : Dog?
}
class Dog {
    var weight : Double = 0
    var toy: Toy?
}
class Toy {
    var price : Double = 0
    func fly(){
        print("飞盘在飞")
    }
}

//创建类的对象

let p = Person()
p.name = "king"
let d = Dog()
d.weight = 60
let t = Toy()
t.price = 100

//对象之间产生关系
p.dog = d;
d.toy = t;

//可选琏的使用
//需求 一  取出 King 狗的玩具的价格

/*  改写法比较危险，如果前面有一个属性 dog  toy 没有 赋值就会崩溃掉。
let dog = p.dog;
let toy = dog!.toy
let price = toy!.price
print(price)  //解包以后拿到的是可用的值
*/

//方式二
/* 这样写也有点麻烦
if let dog = p.dog{
    
    if let toy  = dog.toy {
        
        let price = toy.price
    }
}
*/

// 我们推荐使用可选连
// ?.  就是可选链 。系统会自动判断该可选类型是否有值， 如果有值，则解包，如果没有则为nil
//可选连获取到的值一定是个可选类型。
if let price = p.dog?.toy?.price{
//    做校验
    print(price)
}


//需求  二 给King的狗的玩具赋值一个新的价格
// 如果可选链中有一个值为空，那么语句直接不执行
p.dog?.toy?.price = 30    //直接赋值

//可选链方法de 调用

p.dog?.toy?.fly()  //  会自动判断有没有值，有的话自动调用 有一个没有值整个语句都不执行

