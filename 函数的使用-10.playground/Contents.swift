//: Playground - noun: a place where people can play

import UIKit

//函数的介绍
/*
func 函数名（参数列表） -> 返回类型{
    代码块
    return 返回值
}
 func 是关键字，多个参数列表之间可以使用 ，分割 ，也可以没有参数。  -> 指向返回值类型， {代码块}
 如果函数没有返回值，返回值为void 并且 -> 可以省略  
 */
//没有参数，没有返回值
func about() -> Void{
    print("iphoneX")
}
about()

// ->void 可以省略

//有参数 ，没有返回值  标识符统一写到后面
func callphone(phone:String){
    print("打电话给\(phone)")
}
//没参数 有返回值
func readM() -> String{
    return "吃饭了"
}
let msg = readM()
//有参数，有返回值
func sum(num1 : Int , num2 : Int) -> Int{
    return num1 + num2
}
let result = sum(num1: 1, num2: 20)

