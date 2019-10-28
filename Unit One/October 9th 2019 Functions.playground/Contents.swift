import UIKit

// Functions: a block of code that enables us to call it anywhere in our projects or files

/*
 Vocabulary
 - Function
 - Argument
 - Parameters, internals, externals
 - input
 - output
 - function definition - description of the function
 - calling a function or invking a function
 */


// ===========================================================
//            function syntax
//============================================================

func myFirstFunction() {
    print("Happy hump day 🐫")
}

// call or invoke or execute our myFirstFunction

myFirstFunction() // no arguments

//number is an external parameter name
// x is an internal parameter name
// Int is the data type of the function's input
// Int is also the output of this function
// return type syntask is ->
func doubleNumber(number x: Int) -> Int {
    let result = x * 2
    return result
    
}
let resultOfCalculation = doubleNumber(number: 10) // function takes one argument of type It, output returned is of type Int
print(resultOfCalculation)

//write a function that adds two a number, then triples it
//input: 10
//output: 36
// (10 + 2) * 3

func tripleNumber(num: Int) -> Int {
    return (num + 2) * 3
}

tripleNumber(num: 10)

for index in 1..<4 {
   print(tripleNumber(num: index))
}

// write a function that adds an exclaimation mark ! to a string
// input: Hello
// output: Hello !

func addMark(str: String) -> String {
    return str + "!"
    
}
 let name = "Ameni"

print(addMark(str: name))


//======================================================
//           Optional types on functions
//======================================================


func githubProfile(age: Int?, employmentStatus: Bool?) -> Bool? {
  var profileComplete: Bool?
  if let _ = age,
    let _ = employmentStatus {
    profileComplete = true
  } else {
    profileComplete = false
  }
  return profileComplete // true or false
}
print(githubProfile(age: 56, employmentStatus: false))
if let profileComplete = githubProfile(age: 34, employmentStatus: true) {
  print("Profile complete \(profileComplete)")
} else {
  print("Profile incomplete.")
}
