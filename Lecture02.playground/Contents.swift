//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var str2 = "I'm a champion"

var optionalString: String? = "this could be something else"
optionalString = nil

print(str2)

//var counter = 0

for counter in 0..<10 {
    guard counter != 2  else { continue }
    if counter != 5 {
        print(counter)
    }
}

var animals = ["chickens", "ducks", "cows"]

animals[1] = "goose"
animals

var deliciousness = [
    "chickens": "very yum",
    "goat": "too tough",
    "beef": "perfect"
]

deliciousness["chickens"]

for animal in animals {
    print(animal)
}