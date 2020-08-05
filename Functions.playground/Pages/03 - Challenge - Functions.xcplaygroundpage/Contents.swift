//: [Episode 02: Functions](@previous)
//: ## Episode 03: Challenge - Functions
/*:
 ## Challenge 1
 Write a function that:
 - Takes at least two `String` parameters
 - Has a default value for one parameter
 - Returns a `String`
 - Combines the two parameters in some way and returns the result
 
 You can add any other parameters you like, and you can modify or add anything you want to concatenated strings!
*/

func takesTwoParameter(parameter1: String, parameter2: String = "paramter2") -> String {
    parameter1.lowercased() + " " + parameter2
}

func takesTwoParameter(arg1 parameter1: String, arg2 parameter2: String = "paramter2") -> String {
    parameter1 + " " + parameter2
}

func takesTwoParameter(_ parameter1: String, _ parameter2: String = "paramter2") -> String {
    let adjectives = ["Frolich", "Rund", "Salzing", "Schwarze"].randomElement()!
    let ending = ["schule", "keit", "maler", "maschine"].randomElement()!
    return adjectives + parameter1 + " " + parameter2 + ending
}

takesTwoParameter(parameter1: "Himanshu")
takesTwoParameter(arg1: "Shivanshu")
takesTwoParameter("Aman")
takesTwoParameter("Aman", "srivastava")
//: [Episode 04: Overloading](@next)
