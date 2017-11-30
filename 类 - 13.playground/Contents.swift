//: Playground - noun: a place where people can play

import UIKit

//类的介绍和定义
/*
    swift 也是面向对象的一种语言
    面向对象的基础是类， 类产生对象
 */
//swift 中定义一个类  如果没有写父类，那么该类默认是rootClass 通常情况下继承自NSObject(非 OC的NSobject )
//class king : SuperClass{
//    //定义属性和方法
//}

/*
 在NSObject --> 属性方法   比如OC 中KVC
 */
// 1 定义类

/*
    OC中类的定义
 @interface Person : NSObject
 @end
 
 @impelment
 @end
 */
class Person {
    //如果属性为值类型，初始化为空值（"" / 0） 如果为对象 则初始化为 nil 也就是 ？ 可选类型
    var name : String = ""   //系统默认会为每一个类提供一个构造函数   可选类型默认为nil
    var view : UIView?
}

//2.创建类的对象
let p = Person()  //这种创建方式默认是调用类的构造函数 init() ,当构造函数结束的时候必须要求对所有的属性进行初始化

class Student{
    //存储属性：存储实例常量和变量
    var name : String = ""
    var age : Int = 0
    var mathScore :Double = 0.0
    var chineseScore : Double = 0.0
    
    //计算属性：通过某种方式计算出来的属性   --> 只读属性
    var averageScore : Double{
        
//        set {    //完整的属性这样写
        
//        }
//        get{
             return (chineseScore + mathScore) * 0.5
//        }
        
    }
    //类属性 ：与整个类相关的属性 并且通过类名进行访问
    static var courseCount : Int = 0
    
    //给类扩充函数  在OC中写的很多没有参数的方法在Swift 中可以写成计算属性
    //func getAverageScore() -> Double{
        //return (chineseScore + mathScore) * 0.5
    //}
}
let stu = Student()   //在调用系统帮我们默认提供的构造函数实现
// 如何定义类的属性   通常一个类属性有多种
stu.name = "king"
stu.age = 14
stu.mathScore = 89
stu.chineseScore = 99

//调用方法
//stu.getAverageScore()
//调用属性 推荐
stu.averageScore

//类属性
Student.courseCount = 2





