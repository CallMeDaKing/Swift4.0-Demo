//: Playground - noun: a place where people can play

import UIKit

struct GenericDictionary<Key : Hashable,Value>{
    private var data : [Key :Value]
    
    init(data: [Key: Value]) {
        self.data = data
    }
    subscript<T>(key:Key) -> T?{
        return data[key] as? T
    }
}
var earthData = GenericDictionary(data: ["name": "Earth", "population": 7500000000, "moons": 1])
//返回类型是通用的  泛型集合
let name :String? = earthData["name"]
let population : Int? = earthData["population"]

//extension GenericDictionary{
//    subscript<Keys:Sequence> (keys:Keys) -> [Value] where Keys.Iterator.Element == Key{
//        var values:[Value] = []
//        for key in Keys  {
//
//            if let value = data[key]{
//                values.append(value)
//            }
//        }
//        return values
//    }
//
//}

let King = "King li "

print(King[King.index(before :King.endIndex)])
