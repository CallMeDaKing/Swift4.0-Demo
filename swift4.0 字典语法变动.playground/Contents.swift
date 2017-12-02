//: Playground - noun: a place where people can play

import UIKit

//Set

let numberSet = Set(arrayLiteral: 3,4,5,6,7)
let numberSet1 = Set(1 ... 100)
let numberSet2 = Set(1 ... 200)

numberSet1.isSubset(of: numberSet2)
numberSet.intersection(numberSet1)//筛选两个set 重复元素 intersection交叉交集
numberSet.isEmpty

numberSet.reduce(0, +)//集合元素组运算 ，后一个参数是闭包类型
numberSet.sorted().map(String.init) //将集合升序 元素由Int 转为 String
//元素过滤
let morenumber = numberSet.union([11,4,12,43])  //给集合新增元素（重复值无效）
let filterNumber = morenumber.filter{ $0 > 10 }  //过滤值大于10 的元素
filterNumber   //{12 ,43 ,11} 返回类型是 Set<Int> 类型
let num = Set(numberSet1.lazy.filter{$0 % 5 == 0})
//numberSet1.lazy.filter{$0 % 5 == 0} 是LazyFilterCollection<Set<Int>> 类型，如果需要转为Set类型打印

//Dictionary

let numDictionary = ["one" : 1 , "two": 2 , "three" : 3,"four":4]
let  evenOnly = numDictionary.lazy.filter{(_ , value) in
    
    value % 2 == 0
}
var viaIteration :[ String :Int] = [:]
for (key ,value) in evenOnly{
    viaIteration[key] = value
}
viaIteration

//swift4.0 关于字典初始化的方法
//1.从DictionaryLiteral（类型，而不是实际文字）初始化
let literal = [ "a ","b","c","d"]
let index = [1,2,3,4]
let dic = Dictionary(uniqueKeysWithValues: zip(literal, index))

let names = ["Cagney", "Lacey", "Bensen"]
let dict = Dictionary(uniqueKeysWithValues: names.enumerated().map { (i, val) in (i + 1, val) })
print(dict)
