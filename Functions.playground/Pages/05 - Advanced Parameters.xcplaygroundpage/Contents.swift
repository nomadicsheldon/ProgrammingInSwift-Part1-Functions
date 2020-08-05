//: [Episode 04: Overloading](@previous)
//: ## Episode 05: Advanced Parameters

import Foundation

// --------------------------------------
let passingGrade = 50
let himanshuGrade = 49
let shivanshuGrade = 87
let shivanshuAllGrades = [60, 96, 87, 42]
// --------------------------------------

//: ### Variadic Parameters

/*
 print is best example for variadic parameters
 func print(_ items: Any..., separator: String = " ", terminator: String = "\n")
 */

print(himanshuGrade, shivanshuGrade, shivanshuAllGrades)

// this function will accept 0,1,2...anynumber of parameter values, that why it's called variadic parameter. Such a cool this right 😎

func getHighestGrade(for grades: Int...) -> Int {
    grades.max() ?? 0
}

getHighestGrade()
getHighestGrade(for: himanshuGrade)
getHighestGrade(for: himanshuGrade, shivanshuGrade)

//getHighestGrade(for: shivanshuAllGrades)

//: ### Inout Parameters

// --------------------------------------
var count = 0
// --------------------------------------

// Not possible because value is let type
//func incrementAndPrint(_ value: Int) {
//    value += 1
//    print(value)
//}

// possible because value is var type now. enjoy 🤗
func incrementAndPrint(_ value: inout Int) {
    value += 1
    print(value)
}

// & is required for it.
incrementAndPrint(&count) //1
incrementAndPrint(&count) //2
incrementAndPrint(&count) //3
incrementAndPrint(&count) //4
print(count)

//: [Episode 06: Challenge - Overloads & Parameters](@next)
