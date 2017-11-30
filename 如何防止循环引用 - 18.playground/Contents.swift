//: Playground - noun: a place where people can play

import UIKit

//循环引用解决

//自动引用计数  和OC相同   ，但是有弊端，容易产生循环引用

//1 。创建类
class Person {
    var name : String  = ""
    var book:Book?
}
class Book {
/*
     在OC中表弱引用有两种方式
     __weak/__unsafe_unratained  (很容易产生野指针问题)
     
     在Swift中表示弱引用两种
     weak/ unowned (很容易产生野指针问题)  unowned 不能用于修饰可选类型 使用稍微麻烦 推荐使用weak
     */
    
    var price :Int = 0
    
    //只需要把其中一个引用改为弱引用就可以防止循环引用问题。
    weak var p :Person?
    
//    unowned var p :Person = Person()

    deinit {
        print("验证是否销毁掉")
    }
}

var p : Person? = Person()
p!.name = "king"
var b : Book? = Book()
b!.price = 60

//产生关系
p!.book = b
b!.p = p

// 如果此时我们将p  和 b 置为nil  对象并不能被释放
p = nil
b = nil

