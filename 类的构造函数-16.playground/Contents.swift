//: Playground - noun: a place where people can play

import UIKit

//类的构造函数

//1.类的构造函数类似于OC中的初始化init方法
//2.默认情况下创建一个类时，必然会调用一个构造方法
//3.即便是没有编写任何的构造函数，编译器也会提供一个默认的构造函数
//4.如果是继承自NSObject 可以对构造函数进行重写

//构造函数的基本使用

//类的属性改变
/*
 在OC中 声明一个类
 @interface Person :NSObjec
 @property (nonautomic ,copy) NSString * name;
 @property （nonautomic,assign） NSInteger age;
 
 //一般会扩充一个初始化方法，便于类的创建
 -(instanceType)initWithName:(NSString *)name age:(NSInteger) age;
 
 @end
 
 Person *p = [[Person alloc] init];
 Person *p = [Person alloc]initWithName ~~~~~;
 
 */
@objcMembers // swift 4.0 以后需要显示添加该属性， 否则 无法正常使用KVC
class Person : NSObject{
    
    var name : String  = ""
    var age : Int = 0
    
//    init(){
        //默认的构造函数
//    }
    
    //在swift 中给类扩充构造方法 在swift开发中，如果在我们的对象方法中self. 可以省略
    //如果在我们对象函数中如果有和我们的成员变量重复的局部变量，self. 不能省略
//    自定义构造函数会将系统的后遭函数覆盖掉
    init(name :String ,age :Int){

        self.name = name
        self.age = age
    }
    //传入字典，创建对象并对属性赋值
    init(dict : [String : Any]) {
//        方式一 ，但是如果属性过多这种方式不适合
        /*if let name = dict["name"] as? String{
            self.name = name
        }
        if let age = dict["age"] as? Int{
            self.age = age
        }
 */
//        方式二使用setvalueforkey
        /* 使用KVC的条件
         1 必须继承自NSObject
         2 必须在构造函数中 先调用 super.init()
         3 调用setValuesForKeys(dict) 方法
         4 如果字典中某一个key 没有对应的属性，则属性需要重写setvalue forUndefinedKey 方法
         */
        super.init()
        setValuesForKeys(dict)
        
    }
    override func setValue(_ value: Any?, forUndefinedKey key: String) {}
}

//let p1 = Person();

let p2 = Person(name: "king", age: 18)
let p3 = Person(dict: ["name":"king", "age":18])

print(p3.age,p3.name)   //如果想成功进行键值转化，需要在类上面加 @objcMembers 属性

