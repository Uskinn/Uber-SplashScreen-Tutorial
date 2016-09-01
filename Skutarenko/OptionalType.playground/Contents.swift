//: Playground - noun: a place where people can play

import UIKit

var apples: Int? = nil

func myApples() {
    
    guard let apples = apples else {
        print("Can't find my bag with apples!")
        return
    }
    print("There is \(apples) apples in my bag")
}

myApples()

var someNumbers: [Int?] = [12, 5, nil, 97, 43, 9]

func myNumbers() {
    
    for maybeNumbers in someNumbers {
        guard let value = maybeNumbers else {
            print("There is no value")
            break
        }
        print(value)
    }
}

myNumbers()