//: [Episode 05: Advanced Parameters](@previous)
//: ## Episode 06: Challenge - Overloads & Parameters

/*:
 ## Challenge 1
 Write two possible overloads for the function below. You can use...
 * a different number of parameters
 * different argument labels
 * different parameter types
 * different return types
*/

func multiply(_ number: Int, _ multiplier: Int) -> Int {
  return number * multiplier
}

// TODO: Write solution here

func multiply(number: Int, by multiplier: Int) -> Int {
  return number * multiplier
}

func multiply(number: Int) -> Int {
  return number * 10
}

func multiply(number: Int, To multiplier: Int) -> Int {
  return number * multiplier
}

func multiply(number: Float, To multiplier: Float) -> Int {
  return Int(number * multiplier)
}

func multiply(number: Float, To multiplier: Float) -> Float {
  return number * multiplier
}

multiply(number: 10)
multiply(number: 10, by: 9)
multiply(number: 10, To: 12)
let intVal: Int = multiply(number: 12.12, To: 10)
let floatVal: Float = multiply(number: 12.12, To: 10)
/*:
 ## Challenge 2
 Eliminate the overloads below by using a default value for a parameter.
*/

// --------------------------------------
//func printMultipleOf(multiplier: Int, number: Int) {
//  print("\(multiplier) * \(number)  = \(multiplier * number)")
//}
//
//func printMultipleOf(multiplier: Int) {
//  print("\(multiplier) * 1)  = \(multiplier * 1)")
//}
// --------------------------------------


// TODO: Write solution here

func printMultipleOf(multiplier: Int, number: Int = 1) {
  print("\(multiplier) * \(number)  = \(multiplier * number)")
}


// --------------------------------------
printMultipleOf(multiplier: 7)
printMultipleOf(multiplier: 11, number: 4)
// --------------------------------------


/*:
 ## Challenge 3
 1 - Change the function below so that it can modify the right parameter.
 2 - Call the function!
*/

var score = 50

//func update(score: Int, withPoints points: Int) {
//  score += points
//}

func update(score: inout Int, withPoints points: Int) {
  score += points
}

update(score: &score, withPoints: 3)
//: [Episode 07: Functions as Parameters](@next)
