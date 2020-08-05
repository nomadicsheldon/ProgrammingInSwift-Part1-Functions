//: [Episode 03: Challenge - Functions](@previous)
//: ## Episode 04: Overloading
// --------------------------------------
let passingGrade = 50
let himanshuGrade = 49
let shivanshuGrade = 87
let shivanshuAllGrades = [60, 96, 87, 42]
// --------------------------------------

//: ### Function overloads
//func getPassStatus(for grade: Int) -> Bool {
//    grade >= passingGrade
//}
//: Overload using Different Number of Parameters

//func getPassStatus(for grade: Int, lowestPass: Int) -> Bool {
//    grade >= loweestPass
//}
//
//getPassStatus(for: shivanshuGrade, lowestPass: 80)
//getPassStatus(for: himanshuGrade)

//: Use default values for parameters, instead of overloads, when you can

// it will provide two functions type when you search for implementation
func getPassStatus(for grade: Int, lowestPass: Int = passingGrade) -> Bool {
    grade >= lowestPass
}

getPassStatus(for: shivanshuGrade, lowestPass: 80)
getPassStatus(for: himanshuGrade)

//: Overload using Different Parameter Types

// we are giving same name nut different parameter types
func getPassStatus(for grades: [Int]) -> Bool {
    var totalGrade = 0
    for grade in grades {
        totalGrade += grade
    }
    let averageGrade = totalGrade / grades.count
    return averageGrade >= passingGrade
}

getPassStatus(for: shivanshuAllGrades)

//: Overload using Different Argument Labels, like Swift's `stride` functions

// stride gives interval
for i in stride(from: 10, to: 0, by: -2) {
    print(i, terminator: "")
}

print()

// this stride gives interval including 0
for i in stride(from: 10, through: 0, by: -2) {
    print(i, terminator: "")
}

//: Overload using Different Return Types

func getValue() -> Int {
    return 13
}

func getValue() -> String {
    return "mewo"
}
// both above function name is same but return type is different

//let value = getValue() // It will crash because above both name is same and swift don't know what to return
// so we have to specify type here
let value: Int = getValue()

//: [Episode 05: Advanced Parameters](@next)
