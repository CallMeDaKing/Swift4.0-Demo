//: Playground - noun: a place where people can play

/*
    OC 和Swift中字符串的区别
 
    在OC中 字符串类型是NSString  在Swift 中字符串类型是String
    在OC中 字符串@"" 表示   在Swift 中 字符串""
 
    Swift 使用String 的原因
    1.String 类型是个结构体性能更高
    2.NSString 是个oc对象 性能略差
    3.String 支持直接便利
    4.String提供了String和NSString 的无缝装换
 */
import UIKit
//字符串定义

//1 .定义字符串
//使用let 修饰的字符串 是不可变字符串  如果不写let 类型修饰  默认是let 类型
let str : String = "hello swift"

//使用var 修饰的字符串 是可变字符串
var strm = "hello world"
strm = "hello china"

//2 .获取字符串的长度
//strm.characters.count   // 这个是3.0 版本使用 现已作废
strm.count   //swift 4.0 以后直接使用该语法

//3 .字符串的拼接
//字符串之间的拼接
let  str1 = "king"
let  str2 = "wudi"
let  str3 = str1 + str2   //在这里需要区分并未对字符串内部做变化， 所以使用let 修饰
//字符串和其他标识符之间的拼接
let name = "kings"
let age = 18
let height = 1.88
let infoStr = "my name is \(name) age is \(age)  height is \(height)"
//字符串拼接过程格式化 时间
let min = 3
let second = 12
let timeStr = String(format: "%02d:%02d", arguments: [min,second])

//4 .字符串的截取
let urlstring = "www.kingli.com"
//方式一 将 String 转为  NSString  to 截取到头部
let header = (urlstring as NSString).substring(to: 3)
let range = NSMakeRange(4, 6)  //从索引4 开始截取5个范围的字符
let middle = (urlstring as NSString).substring(with: range)
let footer = (urlstring as NSString).substring(from: 11)
//方式二 需要注意的是直接使用String类型方法截取 注意 swift 4.0 中不在支持 substring .更换了新的api ,下面是具体使用方法 String 新增了集合类型
//（1）使用字符分割字符串 ，返回一个数组
let header1 = urlstring.split(separator: ".")[0]
//(2)字符串截取
/*  不同的字符可能需要不同的内存量来存储
    1.每个String 的值都有一个关联的索引， string.index 确定每个character在字符串中的位置
    2.使用startIndex 访问Character 中的一个位置String ，使用endIndex属性是指最后一个字符之后的位置  ！！仔细读这句话
    3.可以使用index(before: ) 和index（after :） 方法访问给定索引前后的索引值，如果访问远离给定索引的索引，可以使用index(_:offsetBy) 方法
 */
//我们接下来使用新的API 来实现方式一中的效果 在这里我们需要先一步会不来我们先获取单个字符 ，我们先对单个字符串进行操作
let firstC = urlstring[urlstring.startIndex] //获取字符串首字符元素
let endC = urlstring[urlstring.index(before: urlstring.endIndex)]  //获取字符串末位元素 注意这里不可以直接使用urlstring[urlstring.endIndex] ，因为我们在前面也说了，endIndex 是指向最后一个字符之后的位置。
let secondC = urlstring[urlstring.index(after: urlstring.startIndex)] // 获取前面第二个字符
let distanceC = urlstring.index(urlstring.startIndex, offsetBy: 7)// 获取0位置偏移7个字符的位置索引
urlstring[distanceC] //获取0位置偏移7个字符的位置索引对应的字符
//
//
for index in urlstring.indices{
    print("\(urlstring[index])")
}
/*注 您可以使用startIndex与endIndex属性和index(before:)，index(after:)以及index(_:offsetBy:)对符合任何类型的方法Collection的协议。这包括String，如下图所示，以及集合类型，如Array，Dictionary和Set。
*/
//字符串插入和删除
//要将单个字符插入指定索引处的字符串，请使用该insert(_:at:)方法，并将另一个字符串的内容插入到指定的索引处，请使用该insert(contentsOf:at:)方法。
var kingStr = "CallMeDaKing "
let insetC = kingStr.insert("!", at: kingStr.endIndex)
//如果我们想插入的多一点
let insetS = kingStr.insert(contentsOf: "so big", at: kingStr.endIndex)
//有插入就有删除
//要从指定索引处的字符串中删除单个字符，请使用该remove(at:)方法，并删除指定范围内的子字符串，请使用以下removeSubrange(_:)方法：
let removeC = kingStr.remove(at: kingStr.index(before: kingStr.endIndex))  //删除最有一个字符
//现获取删除的索引范围
let removeRange = kingStr.index(urlstring.endIndex, offsetBy: -6)..<kingStr.endIndex
//let removeS = kingStr.removeSubrange(removeRange)  //api 我参考文档，确实有此方法，但是我在xcode 调用该方法是却发现该方法已经被画红线了。。估计是以后要把这个范围删除方法去掉了。

//接下来将到我们上文中提到的字符串截取， 在Swift4.0 中 如果想从一个字符串中得到一个子串时，例如使用下标或者类似prefix(_:)方法，得到的是一个实例 SubString ,而不是另一个字符串，在Swift中 子串与字符串大部分方法相同，这就意味着你呢可以像使用字符串一样处理子字符串。

let king = "king is big!"
let index = king.index(of: "!") ?? king.endIndex //  ？？ 表示如果没有值，返回最后一个字符之后的索引
let beginning = king[..<index]  //获取！ 前的字符串  此时beginning是String.SubSequence
let indexStr = king.index(king.startIndex, offsetBy: 3)
let middlestr = king[indexStr..<index]  //截取3~endIndex的字符
//转为 String
let newString = String(beginning)
/*在这里我们需要从新认识下String 的子串，像字符串一样，每个子串都有一个内存区域，构成子字符串的字符被存储。
 子字符串和字符串的区别在于，为了提高性能，子字符串可以重用于存储原始字符串的部分内存，或者用于存储另一个子字符串的部分内存，（字符串有一个类似的优化，但如果两个字符串共享内存，那么他们就是想等的）这种性能优化意味着我们不必在开辟一块新的内存，降低了成本，除非我们修改字符串。 所以子字符串并不适合长期存储，因为他会重用原始字符串的存储空间，只要使用任何子字符串，整个原始字符串就必须保存在内存中，这会给内存带来不必要的开销。
 */

