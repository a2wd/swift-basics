//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var myPic = [
    [3, 15, 13],
    [26, 3, 14, 2],
    [23, 8, 2]
]

for i in 0..<myPic.count {
    for j in 0..<myPic[i].count {
        if myPic[i][j] < 5 {
            myPic[i][j] = 5
        }
    }
}

myPic

func raiseToNum(inout inImage image: [[Int]], to number: Int) {
    for i in 0..<image.count {
        for j in 0..<image[i].count {
            if image[i][j] < number {
                image[i][j] = number
            }
        }
    }
}

raiseToNum(inImage: &myPic, to: 18)

let ar = [1, 2.2]
let arr = [Int]()