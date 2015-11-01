//: Playground - noun: a place where people can play

import UIKit

let image = UIImage(named: "pipboy_small")!

//Manipulate pixels
//
let rgbaImage = RGBAImage(image: image)!

//for x in 20...30 {
//    for y in 20...30 {
//        let index = y * rgbaImage.width + x
//        
//        var pixel = rgbaImage.pixels[index]
//        
//        pixel.red = 255
//        pixel.blue = 0
//        pixel.green = 0
//        pixel.alpha = 255
//        
//        rgbaImage.pixels[index] = pixel
//    }
//}
//
//
//let newImage = rgbaImage.toUIImage()!

//var totalRed = 0
//var totalBlue = 0
//var totalGreen = 0
//
//for y in 0..<rgbaImage.height {
//    for x in 0..<rgbaImage.width {
//        let index = y * rgbaImage.width + x
//        let pixel = rgbaImage.pixels[index]
//        
//        totalRed += Int(pixel.red)
//        totalBlue += Int(pixel.blue)
//        totalGreen += Int(pixel.green)
//    }
//}

let pixelCount = rgbaImage.width * rgbaImage.height

let avgRed = 57 //totalRed/pixelCount
let avgGreen = 61 //totalGreen/pixelCount
let avgBlue = 59 //totalBlue/pixelCount
let colSum = avgRed + avgGreen + avgBlue

for y in 0..<rgbaImage.height {
    for x in 0..<rgbaImage.width {
        let index = y * rgbaImage.width + x
        var pixel = rgbaImage.pixels[index]
        
        let redDelta = Int(pixel.red) - avgRed
        let greenDelta = Int(pixel.green) - avgGreen
        let blueDelta = Int(pixel.blue) - avgBlue
        
        var offset = 10
        
        if(Int(pixel.red) < avgRed) {
        //if(Int(pixel.red) + Int(pixel.blue) + Int(pixel.green) < colSum) {
            offset = 1
        }
        
        pixel.red = UInt8(max(min(255,avgRed + offset * redDelta),0))
        //pixel.green = UInt8(max(min(255,avgGreen + offset * greenDelta),0))
        //pixel.blue = UInt8(max(min(255,avgBlue + offset * blueDelta),0))
            
        rgbaImage.pixels[index] = pixel
    }
}

let newImage = rgbaImage.toUIImage()






