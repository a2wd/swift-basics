//: Playground - noun: a place where people can play

import UIKit

func trans(thing: String) -> String {
    return "tweedledum"
}

trans("tweedledee")

func trans2(thing: String) -> Int {
    switch thing {
        case "tweedledee": return 0
        case "tweedledum": return 1
        default: return -1;
    }
}

trans2("tweedledum")

func trans3(thing: String, multiplier: Int) -> Int {
    switch thing {
    case "tweedledee": return 0 * multiplier
    case "tweedledum": return 1 * multiplier
    default: return -1 * multiplier
    }
}

trans3("tweedledum", multiplier: 5)