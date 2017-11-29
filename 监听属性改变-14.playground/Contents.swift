//: Playground - noun: a place where people can play

import UIKit

/*
 在OC中我们可以通过重写set 方法来监听属性的变化
 在Swift 中可以通过属性观察者来监听和响应属性的变化
 通常监听存储属性和类性的改变，（对于计算属性，我们不需要定义属性观察者，因为我们可以在属性的setter 中直接观察并响应这种值得变化）
 我们可以通过设置一下观察刚发来定义观察者
 willSet :在属性被赋值以前设置，此时讯属性的值作为一个常量参数被传入，，该参数默认为newValue 我们可以自定义该参数名
 didSet : 在新属性被赋值以后立即调用，与 willSet 相同，此时传入的属性的旧值，默认参数名为oldValue
 willSet和didSet 只有在属性第一次被设置时才会被调用，初始化时，不贵调用这些监听方法
*/

class Person {
    
    // 在声明的属性后后面加上大括号实现willet 和didsSet 方法S
    var name : String  = ""{
        //选择其中之一即可
        //监听属性即将发生改变
        willSet(newName){  // 通过newName 重命名newvalue
             //如果想在发生改变前，想获取新的值
            print(newName)
            
            print("属性即将改变")
        }
        //监听属性已经发生改变
        didSet(oldName){// 通过oldName 重命名oldvalue
            print(oldName)
        print("属性发生改变")
        }
        
    }
    
}
let p = Person()
p.name = "king"   //swift 中直接通过属性给他赋值，而我们之前在OC中 使用 @property 会自动生成get 和set 方法，那么我们在swift中如何监听属性变化呢，这就用到了属性监听器
p.name = "li"

