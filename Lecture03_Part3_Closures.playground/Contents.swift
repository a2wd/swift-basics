//: Playground - noun: a place where people can play

import UIKit

//Closures
//

func performMagic(thingy: String) -> String {
    return thingy
}

performMagic("Hey")

let magicFunction = performMagic

magicFunction("Hey")


//This is a closure
var newMagicFunction = {
    (thingy: String) -> String in
    
    return thingy
}

newMagicFunction("There")

var c = 3 //adderFunction now scopes to current c (3)
var adderFunction: (Int, Int) -> Int = {
    (a: Int, b: Int) -> Int in
    return a + b + c
}

adderFunction(1,2)

func takesAFunc(gimmeInt: (Int, Int) -> Int) {
    print(gimmeInt(1,2))
}

takesAFunc(adderFunction)