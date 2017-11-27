//: Playground - noun: a place where people can play

import UIKit

/*
 结构体 ：是由一系列的具有相同类型或者不同类型的数据构成的集合
 结构体指的是一种数据结构
 结构体是值类型， 在方法中传递时是值传递
 结构体的定义格式
 struct 结构体名称{
    属性和方法
 }
 
 总结 ： 定义结构体
        创建结构体对应的值
        创建系统结构体的方式
        给结构体扩充方法和自定义构造函数  ，如果方法改变成原属性， 需要在方法前面添加 mutation 关键字
 */
//定义结构体
struct Location {
    //属性
    var x: Double
    var y: Double
    var z: Double
    //方法
    func test() {
        print("结构体中的test 函数")
    }
    //mutating  如果在函数中修改了成员属性， 在该函数前必须加上mutating 关键字
    mutating func moveH(_ distance :Double){   //distance 前加 _  外部就不会展示参数
        self.x += distance
    }
    
    //给结构体扩充构造函数  默认情况下系统会为每一个结构体，提供一个默认的构造函数并且该构造函数要求每个成员数行赋值。
    //构造函数以init开头  并且在这不需要返回值  类的构造函数也不需要
    // 在构造函数结束的时候必须保证所有的成员属性必须被初始化
    init(x:Double ,y :Double ,z:Double) {
        self.x = x
        self.y = y
        self.z = z
    }
    init(syStr :String) {
        let array = syStr.components(separatedBy: ",")
        let item1 = array[0]
        let item2 = array[1]
        let item3 = array[2]
        
        // ?? 先判断前面是否有值，如果有值，则自动解包，如果没有则使用后面的值
        self.x = Double(item1) ?? 0
        self.y = Double(item2) ?? 0
        self.z = Double(item3) ?? 0
        
    }
}
//2.创建结构体对应的值
var  locatoion = Location(x: 10, y: 10, z: 10)  ////结构体是值类型， 所以当我们使用方法 来改变结构体内的属性时， 需要我们使用var 来修饰
//3系统结构体的创建方式
let center = CGPoint(x: 10, y: 10)
let rect = CGSize(width: 20, height: 20)
let point = CGPoint(x: 0, y: 0)
let range = NSRange(location: 0, length: 3)

//给结构体 扩充方法
locatoion.test()
locatoion.moveH(30)

//5. 给结构体扩充构造函数
Location(x: 10, y: 20, z: 30)

