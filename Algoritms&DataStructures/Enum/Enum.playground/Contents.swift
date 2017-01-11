//: Playground - noun: a place where people can play

import UIKit
//////////////////      ENUMs

/*
"Enums declare types with finite sets of possible states and accompanying values. With nesting, methods, associated values, and pattern matching, however, enums can define any hierarchically organized data."
*/

// Basic Enum //////////////////////////////////////////////////////////

enum Movement {
    case Left
    case Right
    case Top
    case Bottom
}

let aMovement = Movement.Right // Right

// Different ways to retrieve the value of Movement:

// 1.
switch aMovement {
case .Right: print("Turn right 1")
default: break
}

// 2.
if case .Right = aMovement { print("Turn right 2") }

// 3.
if aMovement == .Right { print("Turn right 3") }

//ENUM VALUES TYPES /////////////////////////////////////////////////////////

// 1. Int

enum MoreMovement: Int {
    case Left = 0
    case Right = 1
    case Top = 2
    case Bottom = 3
}

// 2. String

enum Wine: String {
    case Red = "Good with steak"
    case White = "Good with fish"
    case Rose = "Good with salads"
}

// 3. Double
enum Constants: Double {
    case π = 3.14159
    case e = 2.71828
    case φ = 1.61803398874
    case λ = 1.30357
}

let wine = Wine.Red
print(wine.rawValue)













