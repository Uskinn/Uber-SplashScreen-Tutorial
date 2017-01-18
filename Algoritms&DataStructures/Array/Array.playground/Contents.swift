//: Playground - noun: a place where people can play

import UIKit
//let myArray = [4,5,6,5,7,8,7,4,5]

//////////// Finding the longest subarray in array //////////////////

func findLongestArray(inputArray: [Int]) -> [Int] {
    
    if inputArray.count < 3 {
        return []
    }
    let elementFive = 5
    let elementSeven = 7
    
    var isFiveFound = false
    
    var five = -1
    var seven = -1
    
    var subArray: [Int] = []
    
    for (index, element) in inputArray.enumerated() {
        
        if element == elementFive && !isFiveFound {
            five = index
            isFiveFound = true
        }
        
        if element == elementSeven  {
            seven = index
        }
    }
    
    if five < seven {
        for i in five...seven {
            subArray.append(inputArray[i])
        }
    }
    
    return subArray
}

//print(findLongestArray(inputArray: myArray))

///////////////// Finding the shortest subarray in array /////////////////////

func findShortestSubArrayInArray(inputArray: [Int]) -> [Int] {
    
    if inputArray.count < 2 {
        return []
    }
    var isFiveFound: Bool = false
    
    var resultArray: [Int] = []
    
    let elementFive: Int = 5
    let elementSeven: Int = 7
    
    var fiveIndex: Int = -1
    var sevenIndex: Int = inputArray.count
    var tempFive: Int = -1
    
    
    for (index, element) in inputArray.enumerated() {
        if element == elementFive {
            isFiveFound = true
            tempFive = index
        
            print("five: \(fiveIndex)")

        }
        
        if element == elementSeven && isFiveFound == true {
            isFiveFound = false
            if sevenIndex - fiveIndex > index - tempFive {
                fiveIndex = tempFive
                sevenIndex = index
            }
        }
    }
    
    if fiveIndex >= 0 && sevenIndex < inputArray.count {
        for i in fiveIndex...sevenIndex {
            resultArray.append(inputArray[i])
            
        }
    }
    
    
    
    return resultArray
    
}
let myArray = [4,5,6,5,7,45,8,7,4,90,5]

print(findShortestSubArrayInArray(inputArray: myArray))
























