
//: Playground - noun: a place where people can play
//for 循环的写法

//1 区间for 循环
/*
 OC中的for 循环
 
 for (int i = 0 ; i < 10 i ++){
    NSLog(@"%d",i)
 }
swift 2.0支持 3.0 不再支持
 for (var i = 0; i < 10 ;i++ ) {
 print(i)
 }
 */
//Swift3.0 for 循环支持 区间遍历
//for  in 写法一
for i in 0..<10 {
//    print(i)
}
//写法二
for _ in 0..<10{
//    print("hello world") //i使用不到可以使用 _ 代替
}



//2 while  和  do  while 循环
/*
 OC 中while 使用
 int a = 0
 while (a < 10){
 a++ ;
 }
 */
//swift while  后面de () 可以省略掉  没有非0 即增的说法 必须明确的真假   true 和false
var  m = 0
while m<10 {
    m += 1
    print(m)
}

//do while  循环
repeat{
    m -= 1
}while m>0
