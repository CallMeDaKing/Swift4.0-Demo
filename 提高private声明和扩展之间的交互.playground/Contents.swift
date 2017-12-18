//: Playground - noun: a place where people can play

import UIKit

//在同一个swift 文件中扩展
struct King{
    private var name : String = ""
    fileprivate var age : Int = 18
    
    init(name: String) {
        
        self.name = name
    
    }
    
    
}
//这是一个类扩展
extension King{
    
    //我在扩展中又声明了一个私有变量
    //    private var brother : String = ""    //会报错 error: extensions may not contain stored properties
    private func mybrother(){
      
    }
    
    func callmeking(name : String) {
        if name == self.name {  //
        print("可以获取到私有成员变量\(name)")
        
        }
//        self.age      18 //可以获取到fileprivate 变量
    }
}
//这是另一个扩展
extension King{
    func li() {
       
     //   King.callmeking(<#T##King#>)  在类扩占中可以访问上一个扩展中的方法，因为他在King类的访问空值范围内。
    }
    
}
let person = King(name: "king")
person.callmeking(name: "king")  //在类扩展中也可以获取到私有成员变量king

