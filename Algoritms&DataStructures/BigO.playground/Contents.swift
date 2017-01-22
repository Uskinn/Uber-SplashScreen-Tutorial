//: Playground - noun: a place where people can play

import UIKit

func findMatching(number: Int, in myArray: [Int]) -> Bool  {
    
    for num in myArray {
        if num == number {
            return true
        }
    }
    
    
    return false
}

var numbers = [2,34,43,65,2,7,9300,76,0]

numbers.sorted()

findMatching(number: 1, in: numbers)

// O(n)
// LINEAR TIME - the speed of executing this func depends of the length of the input array. Than longer input array then more time needs to be done.
// Looping through the entire array untill we find matching number

extension Array where Element: Comparable {
    
    func linearSearch(forElement key: Element) -> Bool {
        
        let result: Bool = true
        // Check all possible values
        for number in self {
            if number == key {
                return result
            }
        }
        
        return !result
    }
}

let isFound1: Bool = numbers.linearSearch(forElement: 2)

// O(log n)
// LOGARITHMIC TIME
// Using a technique called binary search




extension Array where Element: Comparable {
    
    mutating func binarySearch(forElement key: Element) -> Bool {
        
        var result = false
        
        // establish indices
        let min = self.startIndex
        let max = self.endIndex - 1
        let mid = self.midIndex()
        
        // check bounds
        
        if key > self[max] || key < self[min] {
            print("search value \(key) not found")
            return false
        }
        
        // evaluate chosen number
        let n = self[mid]
        
        print(String(describing: n) + " value attempted..")
        
        if n > key {
           var slice = Array(self[min...mid - 1])
            result = slice.binarySearch(forElement: key)
        }
        
        else if n < key {
           var slice = Array(self[mid + 1...max])
            result = slice.binarySearch(forElement: key)

        }
        
        else {
            print("search value \(key) found..")
            result = true
        }
        
        return result
        
    }
    
    // return middle index
    
    func midIndex() -> Index {
        return startIndex + (count / 2)
    }
}
var nu = [1,2,3,4,5,6,7,8,9,10]

let isFound: Bool = nu.binarySearch(forElement: 6)




















