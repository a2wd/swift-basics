//: Playground - noun: a place where people can play

import UIKit

class Legs {
    var count: Int = 0
}

class Animal {
    var name: String = ""
    var legs: Legs = Legs()
}

//ARC - automatic reference counting
let dog = Animal()

//protected class (default) - only your module can see this class
//public - other modules can see your class

//weak var (as opposed to the default, strong) - references not affected when that object goes out of scope

//Property observers
//Computed properties

class Human {
    var name: String = ""
    
    var upperCaseName: String {
        get {
            return name.uppercaseString
        }
        set {
            name = newValue
        }
    }
}

let boy: Human = Human()
boy.name = "Reece"
boy.upperCaseName

//Value type
var a = 1
var b = a

b = 2
a

//Reference type
class number {
    var n: Int
    init(n: Int) {
        self.n = n
    }
}

var c = number(n: 3)
var d = c

c.n = 777
d.n

//Struct - like a class, but a value type!!