//: Playground - noun: a place where people can play

import UIKit
/*
    Optional 可选类型：
 
        强制对空值做判断
        在swif 开发中，nil 也是一个特殊的类型， 因为和真是类型不匹配，所以是不能赋值的， （swift 是强类型语言）但是在开发中我们又在所难免的把对象值为nil，所以Swift 推出了可选类型
 
        总结：
            1.定义可选类型   option案例<Sring>     / String?
            2.给可选类型赋值  Optional（“king”）   / 直接赋值 "king"
            3.从可选类型中取值
            4. 强制解包非常危险   name !
            5.可选绑定 if let name = name {}
 */
//在类里面所有的必须都初始化
//class person{
//    var name :String = nil   类型不一致，不可以初始化为nil  nil也是特殊的类型
//}

/*
 在开发中只有可选类型可以赋值为 nil  , 其他类型都不可以
 */
//1 .定义可变类型，  泛型集合
//>1 ,定义方式 一
var  name1 : Optional<String> = nil
//>2 定义方式二 ： 语法糖
var name : String? = nil

//2.给可选类型进行赋值
//>1 赋值方式一
name = Optional("12")
//>2 赋值方式二  语法糖
name = "king"

//3 .取出可选类型中的值
print(name)   //Optional("king")   可选类型

print(name!) // king  强制解包 输出的确定类型 不再是可选类型

//4. 注意强制解包非常危险 ，如果对象为nil ,那么强制解包，程序就会崩溃掉
//print(name1!)

// 避免强制解包
if name != nil{
    print(name)
}

//5 .可选绑定 ：该语法用于可选类型，使用起来更加方便  先判断那么是否有值，如果没有值，则不会执行{} 内容，如果有值，则那么系统会自动对可选类型解包，并且将解包后的结果赋值给临时tempName
if let tempName = name{
    print(tempName)
}
//写法二  推荐
if let name = name{
    print(name)
}

