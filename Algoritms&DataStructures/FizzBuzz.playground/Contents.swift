//: Playground - noun: a place where people can play

import UIKit

func fizzBuzz(number: Int) -> String {
    
    switch (number % 3 == 0, number % 5 == 0) {
    case (true, false): return "Fizz"
    case (false, true): return "Buzz"
    case (true, true): return "FizzBuzz"
    default: return String(number)
        }
    }

func fizzyBuzzyWith(startValue: Int, and endValue: Int) {
    for num in startValue...endValue {
        print(fizzBuzz(number: num))
    }
}

fizzyBuzzyWith(startValue: 2, and: 900)






