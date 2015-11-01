//: Playground - noun: a place where people can play

import UIKit

//Overriding base class
//
class superClass: NSNumber {
    override func getValue(value: UnsafeMutablePointer<Void>) {
        super.getValue(value)
    }
}

extension NSNumber {
    func superCoolGetter() -> Int {
        return 777;
    }
}

let n = NSNumber(int: 5)
n.superCoolGetter()

//Protocols
//
protocol dancer {
    func dance()
}

class person: dancer {
    func dance() {
        print("boom clap")
    }
}

//Enums
//
enum colours {
    case Blue
    case Red
    case Green
}

var a = colours.Blue
a == colours.Blue
//enums could be anything - strings etc.
enum stringNum: String {
    case hello
    case world
}
stringNum.hello.rawValue



//Initialisers
//
class dog {
    let breed: String
    
    required init(breed: String) {
        self.breed = breed
    }
    
    convenience init() {
        //Convenience initialiser must call required initialiser
        self.init(breed: "corgi")
    }
    
    deinit {
        //Cleanup code
    }
}

let molly = dog(breed: "yorkiepoo")
let charles = dog()

molly.breed
charles.breed


//Generics
//

//Operator Overloading
//

