//: Playground - noun: a place where people can play

import UIKit

func tossCoin() -> String {
    print("Tossing a Coin!")
    let flip: Int = Int(arc4random_uniform(UInt32(2)))
    if flip == 1 {
        print("Heads")
        return "Heads"
    }
    else {
        print("Tails")
        return "Tails"}
}

tossCoin()

func tossMultipleCoins(someInt: Int) -> Double {
    var headcounter = Int()
    for _ in 1...someInt {
        let x = tossCoin()
        if x == "Heads" {
            headcounter += 1
            print(headcounter)
        }
    }
    return Double(headcounter) / Double(someInt)
    
    
}


print(tossMultipleCoins(someInt: 100))