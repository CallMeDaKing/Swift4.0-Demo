//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
/* 1
 swift 中Int 使用最多相当于 OC中的 NSInteger

 类型推导  ：如果定义标识符时直接进行赋值，标识符后面的东西可以省略 ，因为swift 会根据后面的赋值类型来决定前面的数据类型
 可以通过 option + 鼠标左键 查看标识符的类型
 */
//let a : Int = 20
//var b :Double = 2.11

//类型推导
let a = 20
var b = 1.23

let view = UIView()


/*  2
 Swift 基本运算  ： 必须保证类型一致 ，因为Swift 中没有隐式转换
 */
let m = 20
let n = 20.4
//let result = m + n  //这样会报错

let result = Double(m) + n  //这样类型转换以后可以正常计算

//注意  CGFloat  和  Double  虽然都是浮点型，但还是需要进行类型转换
let m1 :Double = 2.44
let n1 :CGFloat = 1.33
//let result1 = m +n //直接这样相加也是会报错的
let result1 = Double(n1) + m1  //正确写法
//所以  swift 类型做基本运算， 必须类型一致！！！！！



/*
  3 .Swift 逻辑分支      guard   if    switch     ？ ：三目运算
 
 OC 的用法  判断条件  非0 即真
 int a = 20;
 if(a > 0) {} else {}
 
 Swift 中
 1 .if 后面 （） 可以省略
 2 . 没有非空即真 必须是Bool (true  /false ) 两种
 
 //语句组
 guard if m >0 else {
 break
 
 }
 */
let a1 = 10
if a1 > 0 {
    print("a 大于0")
}
//else if 使用

let score = 88

if score < 0 || score > 100 {
    print("不合理")
} else if score < 60{
    print("不及格")
} else if score < 80 {
    
    print("良好")
} else if score < 99 {
    
    print("优等")
}

//guard  的使用 swift 2.0 新增的语法  可读性高很多

// 需求 ： 年龄20 判断能否直接在网吧上网
let age = 20
//swift 函数  先使用 if 做判断 伪代码
/*func online (age :Int){
    if age >= 18 {
        if 带了身份证{
            if 是否拿钱
            print("可以上网")
        }else{
            print("回家拿身份证")
        }
        print("这个人可以上网")
    }else{
        print("滚回家")
    }
}
online(age: 20)
*/
func online (age :Int){
    guard age >= 18 else {
       print("回家去")
        return
    }
    print("当guard 的条件为真直接往下执行")
}

online(age: 20)


//switch 分支用法

/*
 总结 1 .switch 的基本使用
     2.switch 后面的（） 可以省略
     3.case 后可以不加break
 
    补充
        switch  case 后面可以加上多个条件
        如果希望产生case 穿透 可以在case结束时  fallthrough
 
        switch 可以判断多种类型
        1. 浮点数
        2.字符串
        3.区间类型    ..<   ...   
 
 */
//1 基本使用方法
let sex = 0
// 0 :男   1 ： 女
/*
 OC中写法
 
 switch(sex) {
 case 0 :
    print("")
    break
 case 1 :
    print("")
    break   //不加会产生case 穿透
 }
 */
//在Swift中 和OC的区别  1 .: switch 后面的（） 可以省略掉  2. case 结束时可以不加break 不会有case 穿透问题
switch sex {
case 0:
    print("男人")
case 1:
    print("女人")
default:
    print("其他")
}

//2 基本用法的补充
switch sex {
case 0,1:
    print("正常人")
    fallthrough
default:
    print("非正常人")
}

//2.1 如果希望产省case 穿透  需要在case结束时，加上fallthrough 便会打印所有数据
//3 判断其他类型   比如浮点型
let x = 3.14

switch x {
case 3.14:
    print("相等")
default:
    print("不相等")
}
//还可以判断字符串类型
let g = 20
let h = 30
let oprationStr = "+"
var result2 = 0

switch oprationStr {
case "+":
    result2 = g + h
case "-":
    result2 = g - h
case "*":
    result2 = g * h
case "/":
    result2 = g / h
default:
    print("不合理操作符")
}

//支持判断区间类型
/*
    区间 1 半开半闭区间  0..<10     从0 ~ 9
        2 闭区间       0...9        从0~9   [0 ，9]
 */
let scores = 88
switch scores {
case 0..<60:
    print("不及格")
case 60..<80:
    print("及格")
case 80..<90:
    print("良好")
case 90...100:
    print("优")
default:
    print("不合理的数据")
}
