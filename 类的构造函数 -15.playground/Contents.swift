
//: Playground - noun: a place where people can play

import UIKit

/*
 构造函数的介绍，构造函数类似于OC的初始化init 方法
 默认情况下创建一个类时，必然会调用一个构造函数
 计时没有编写任何构造函数，编译器也会执行一个默认的的构造函数
 如果是继承自NSObjcet 可以对父类构造函数进行重写
 
 OC中
 @interface Person  : NSObject
 @property （nonautomic ,copy） NSString *name;
 @property (nonautomic,asign) NSSInteger age;
 -(instanceType)initWithName:(NSString *) name  age:(NSInteger) age;
 -（instanceType)intiWithDict:(NSDictionary * )dict;
 @end
 
 Person *p = [[Person alloc]init];
 Person *p = [Person alloc]initWithName:@"king" age:18]
 */

class Person {
    var name : String = ""
    var age : Int = 0
    
    /*init() {
        //默认构造函数
    }
 */
//    在Swift开发中如果在对象方法中用到了成员属性，self.可以省略
    
//注意：    如果在函数中和我们成员属性重名的局部变量，那么self. 不能省略
//注意 ：   如果有自定义构造函数，那么会将系统提供的构造函数覆盖掉。如果不想覆盖需要将系统构造函数明确写出来
    init() {
        //这样在下面创建对象的时候就会有两个构造函数
    }
    init(name: String ,age :Int){
        self.name = name
        self.age = age
    }
    //Dictionary <string , Any> --> [String :Any]
    init(dict:[String : Any]) {
        
//        let dicname = dict["name"]
//        name = dicname as! String   有点复杂
        
        // 稍微简单写法  但是如果属性很多不使用这个方法
       if  let name = dict["name"] as? String{
            self.name = name
        }
        
        if let age = dict["age"] as? Int{
        
            self.age = age
        }
        
        //KVC 方法 推荐使用 在16中单独练习
        
        
}
let p1 = Person()

let p = Person(name: "king", age: 15)

let  p2 = Person(dict: ["name" :"king" ,"age":18])



