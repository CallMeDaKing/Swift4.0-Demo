//: Playground - noun: a place where people can play

import UIKit

@objcMembers   //swift 4.0 中需要收动调用OBjective-C 的机制。
class Person : NSObject {
    var name : String = ""
    var age  : Int = 0
   
    //构造函数
    init(dict:[String : Any]) {
        /*
         if let name = dict["name"] as? String{
         self.name = name
         }
         if let age = dict["age"] as? Int{
         self.age = age
         }
         */
        // 上面的方法不是和多个属性的类。
        // 使用KVC 更加简洁
        
        /*
         使用KVC 的条件 ：
         1 .必须继承自 NSObject
         2. 必须在构造函数中先调用super.init()
         3.调用
         */
        super.init()
        setValuesForKeys(dict)
    }
    override func setValue(_ value: Any?, forUndefinedKey key: String) {}
}

let p  = Person(dict: ["name":"king","age" : 18])

print(p.name ,p.age)
