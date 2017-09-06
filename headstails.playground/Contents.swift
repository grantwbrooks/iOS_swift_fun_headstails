//: Playground - noun: a place where people can play

import UIKit

func tossCoin() -> String {
    print("Tossing a Coin!")
    let flip = Int(arc4random_uniform(UInt32(2)))
    if flip == 1 {
        print("Heads")
        return "Heads"
    }
    else {
        print("Tails")
        return "Tails"}
}

tossCoin()

func tossMultipleCoins(toss: Int) -> Double {
    var headcounter = Int()
    for _ in 1...toss {
        let x = tossCoin()
        if x == "Heads" {
            headcounter += 1
            print(headcounter)
        }
    }
    return Double(headcounter) / Double(toss)
    
    
}


print(tossMultipleCoins(toss: 100))