//: [Episode 06: Challenge - Overloads & Parameters](@previous)
//: ## Episode 07: Functions as Parameters

//: Functions are data types, and can be assigned to variables and constants just like `Int` and `String`.

func add(number1: Int, number2: Int) -> Int {
    return number1 + number2
}

// assigning function to variable, you can assign to constant(let) as well
var function = add
// it will loose information about paramater name and argument name as well
function(1,2)

func substract(numbet1: Int, number2: Int) -> Int {
    return numbet1 - number2
}

// assigning function to variable, you can assign to constant(let) as well
function = substract
// it will loose information about paramater name and argument name as well
function(1,2)

//: Functions can use functions as parameter and return types. Functions that do this are called  "higher-order functions"

// we can replace this long name "(Int, Int) -> Int" with typealias.
//func printResult(_ operate: (Int, Int) -> Int, _ a: Int, _ b: Int) {
//    let result = operate(a,b)
//    print(result)
//}

// typealias
typealias Operator = (Int, Int) -> Int

// Nice code looking clean 🥳
func printResult(_ operate: Operator, _ a: Int, _ b: Int) {
    let result = operate(a,b)
    print(result)
}

// we can pass any type which accepts "(Int, Int) -> Int"
printResult(add, 4, 3)
printResult(substract, 4, 3)
printResult(+, 5, 6)
printResult(-, 5, 6)
printResult(*, 5, 6)

// Good Job!!!!

//: A `typealias` lets you give a name to a compound type, or give *another* name to a named type.

// ---------------------------------------------------
typealias Student = (name: String, grade: Int)

let passingGrade = 50
let jessy: Student = (name: "Jessy", grade: 49)
let ozma: Student = (name: "Ozma", grade: 87)

func printPassStatus(for student: Student) {
  print(student.grade >= passingGrade ? "\(student.name) passed!" : "Try again, \(student.name).")
}

printPassStatus(for: jessy)
printPassStatus(for: ozma)
// ---------------------------------------------------

//: ## End
