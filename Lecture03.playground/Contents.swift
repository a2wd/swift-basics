//: Playground - noun: a place where people can play

import UIKit

//Optionals
//
var maybeString: String? = "an optional var"

//unbox value with ! operator:
if maybeString != nil {
    print(maybeString!)
    maybeString!.characters.count
}

if let definitelyString = maybeString {
    print(definitelyString)
}
else {
    print("nil value")
}

//guard let string = maybeString else {return}

var mostLikelyString: String! = "a string from objective C"

mostLikelyString.characters.count


//Part 2 - classes
//
class cupHolder {
    var cups: [String]? = nil
}

class car {
    var cupHolders: cupHolder? = nil
}

let niceCar = car()
niceCar.cupHolders = cupHolder()

let oldCar = car()

//if let cupHolder = niceCar.cupHolders{
//    if var cups = cupHolder.cups {
//        cups.append("Coke")
//    }
//    else {
//        cupHolder.cups = ["Coke"]
//    }
//}
niceCar.cupHolders?.cups = []
niceCar.cupHolders?.cups?.append("Fanta")
niceCar.cupHolders?.cups?[0]