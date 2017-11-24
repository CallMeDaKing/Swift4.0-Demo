//: Playground - noun: a place where people can play

/*swift 初体验
    1. 导入框架
    2.定义标识符
    3.语句结束可省略
    4.打印数据print
*/

// 1.swift 如何导入框架
/*
 OC 中导入框架  #import <UIKit/UIKit>
 */

import UIKit


//2 .定义标志符
/* OC 中 定义变量/标志符
 int a = 20;
 a = 10
 
 Swift 中定义标识符
 1> 定义标识符时，必须明确指定标识符是一个变量还是一个常量
 2> 是用var 定义变量
 3> 使用let 定义常量
 4> 定义格式   let/vat 标识符名称 ： 标识符类型 = 赋值
 */

//2.1变量
var a : Int = 20
a = 10
//2.2 常量
let b :Double = 3.123  // 一旦定义不能修改


//3.在swift中如果一行当中只有一条语句， 那么语句结束时，分号可以省略


//4 .打印内容
/*
    OC 中打印
    NSLog(@"hello world");
    NSLog(@"%d",a);
    Swift中打印 直接使用print
    print("hello")
 */
print("hello world")
print(a)
print("这是swift的打印方式\(a)")



/* 5 常量和变量使用注意

 
 1  注意一 ： 在开发中优先使用常量，只有发现标识符需要修改是，再是用变量
//目的防止 在其他不希望修改的地方不小心将值修改掉
2.常量本质 ：指向的内存地址不可以修改，但是可以通过内存地址找到对应的对象，之后修改对象的属性
 
 OC 中创建对象
 UIView *view = [UIView alloc]init]
 
 
 */
//在swift中创建对象   类型()
//var view : UIView = UIView() view 其实保存的是对象的地址
//view = UIView()
let view : UIView = UIView()   //常量类型
//view = UIView()  如果是常量 不能这样赋值，因为常量内存地址不可修改
view.alpha = 0.5  //但是可以通过内存地址找到对象 ， 修改对象内部的属性是可以的

view.backgroundColor = UIColor.blue




/*
   6 . 创建对象补充 ：
 
    需求： 创建一个UIview 添加一个UIbutton
 
 */
let rect = CGRect(x: 0, y: 0, width: 100, height: 100)
let view1 :UIView = UIView(frame: rect) //相当于 alloc init
view1.backgroundColor = UIColor.red

//创建button
let  btn :UIButton = UIButton()
//设置属性
btn.frame = CGRect(x: 0, y: 0, width: 50, height: 50)
btn.backgroundColor = UIColor.cyan
//设置文字
btn.setTitle("我是button", for: .normal)
btn.setTitle("阿牛", for: UIControlState.selected)
//枚举类型有两种写法
//方式一 如果能推断出该枚举的类型 可以直接写 .类型  方式二 如果推断不出类型， 需要 枚举类型.具体类型
//在swift 调用方法，同意使用.语法
view1.addSubview(btn)

