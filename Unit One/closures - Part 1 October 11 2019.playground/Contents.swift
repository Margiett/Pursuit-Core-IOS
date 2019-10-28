import UIKit

// closure: is a block of code that can be called in our program similar to a function. In fact a closure is a type of function. we will see and recongnized differences as we journey through this course

//external paramerter name is used by the caller, they will see the external name e.g printGreeting(name: "Bob"

//default parameter value we will set on age is 21
//in the case the callwe of our function does not
//provide age argument we will default to showing 21
//set default value on the data type that we are
//interested in, e.g age: Int = 21

//==================================================================================================
//                                        closure syntax
//==================================================================================================

// returns void
func printGreeting(_ name: String, _ age: Int) {
    print("Good morning, iOS 6.3")
    // code
    print("Good morning \(name), welcome to iOS 6.3, your age is \(age)")
}

// call function
printGreeting("Alex",45)

print("Good friday morning", terminator: "🥳") // default newline character for terminator "\n"

for _ in 0..<4 {
    print("Good friday morning", terminator: "🥳")
}

//==================================================================================================
//                                        closure syntax
//==================================================================================================

/*
= { (paramerters) -> (return type) in
 //code here
 }
 */

// closures:
// - can be passed as function parameters
// - can be returned from a function
// can be assigned into a variable or constant

// greeting is a closure, does not have paramerters, does not return a value returns void (nothing)
let greeting = {
    print("Welcome to closures")
}
greeting()

// closure that takes parameters and return a value
let square = { (num: Int) -> (Int) in
 return num * num

}

print(square(10))
print()
print()
print()

// $$ only work in closure
let squareShortandSyntax: (Int) -> (Int) = {$0 * $0}
// refactoring square closure above to make use of
//shorthand closure syntax and shorthand argument names
// $0 is the first parameter, here we ONLY have one parameter, if you have e.g two parameters it would be $0 followed by $ 1 and so on
let squareShorthandSyntax: (Int) -> (Int) = { $0 * $0}
print(squareShortandSyntax(25)) // 25 * 25 * = 625
print("======================================")
print()
//practice, create add, subtract, multiply and divide using shorthand closure syntax and argument names
// subtract trailng closure implicity return the value of the subtraction, return keyword is not needed
var subtractSyn: (Int, Int) -> (Int) = {$0 - $1}
print(subtractSyn(5,2))
print()
print()
print()
//==============================================================================================================
//                                        closure as function parameters
// closures are "first class citizens" meaning we can pass
//closures into functions as parameters similar as we do with variables in functions, can also return closure
//================================================================================================================

//func hellowGreeting(closure: (String) -> ())
// the name of the closure could be anyname, here we are simply using the word "closure" but it could be "action", "myClosure" ..........
// { (paramerters) -> (return type) in
func helloGreeting(closure: (String) -> ()) {
    print("hello iOS 6.3")
    closure("Heather") // value was captured by the closure
}
// calling a function that takes in a closure using trailing closure synax
helloGreeting { name in
    print("Hello, \(name) it's Friday 🚀")
    
}
print()
print()
func printClosure(action: () -> ()) {
    action()
    
}
// defined a closure named printingAction
// no paramerter, no return
let a = {
    print("inside printCloser trailing closure")
}
// called our printClosure
printClosure(action: a)

//===================================================================================================================================
//use some built-in higher order functions (closures)
// - map {....} - tranform a value. e.g 4 * 4 = 16 return array of collection
//filter {....} - filters values based on a condition
// returns an array of collection
// reduced (0, +) - takes an initial value, e.g 0 and a closure e.g + (addition) and combines all the values and return the result
// compactingMAp {...}
// sorted { > } - you provide a sorting closure and it return based on the sorting algorithm
// forEach {....} - similar to the for-in loop
//======================================================================================================================================


// given an array of integers return an array where each value is a squared
// input: [1,2,3,4,5,6]
//output: [1,4,9,16,25,36]
let list1 = [1,2,3,4,5,6]
func returnSquares(arr: [Int]) -> [Int] {
    var squares = [Int]()
    for num in arr {
        squares.append(num * num)
    }
    return squares
}
print(returnSquares(arr: list1)) // should get [1,4,9,16,25,36]

// using map
//=======================================================================
let usingMapResults = list1.map { $0 * $0 }
print(usingMapResults)


//==========================================================================
// using filter
//==========================================================================
//given an array of fellow return only fellows where
// their names begin with "a" case-insensitive
// input = ["George", "Tom", "Ahad", "James", "Ameni"]
// output = ["Ahad", "Ameni"]
let list2 = ["George", "Tom", "Ahad", "James", "Ameni"]
let fitered
    Results = list2.filter {
    $0.lowercased().hasPrefix("a")}
print(fiteredResults)
 
//=======================================================================
// using reduce
//=======================================================================

//given an array of intergers return the sum
//input: [10, -10, 50, 20]
let list3 = [10, -10, 50, 20]
let reducedResults = list3.reduce(0, +)

print("redicedResilts")

//=======================================================================
// using compactMap
//=======================================================================
// given an optional array of integers return ONLY valid
//intergers
// input: [nil, 56, 12, -89, nil, nil, 0, 6]
//output: [56,12, -89, 0, 6]
let list4 = [nil, 56, 12, -89, nil, nil, 0, 6]
let compactedResults = list4.compactMap {$0}
print(compactedResults)

//>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
//given an array of names return all the names uppercased
//input: ["Alex", "Tiffany", "Antonio", "Genesis"]
//output: ["Alex", "Tiffany", "Antonio", "Genesis"]
// use map, filter or reduce to solve exercise

//// map transform all the elements
//let sortedNamesUsingMaps = names.map { $0.uppercased ()}
//print(sortedNamesUsingMap)

//>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>.

// re-creating the built-in map function
// map function will take 2 paeamters,
// first parameter is an array on Ints
// second perameter is a closure
func customMAp(arr:[Int], closure: (Int) -> Int) -> [Int] {
    var tranformedArr = [Int]()
    
    for num in arr {
        // perform transformation based on closure and append result in
        // transformedArr
        tranformedArr.append(closure(num))
    }
    return tranformedArr
    
}
// using customMap function above take in array of numbers and return
// the squared values of each of those elements
// input: [1,2,3,4,5,6,7]
//output: [ 1,4,9,16,25,36,49]

//code here >>

//let numberArray = [1,2,3,4,5,6,7]
//let squaredNumberArray = customMAp(arr: numberArray) { $0 * $0 }
//print(squaredNumberArray)

//or long way to do it replacing $0 * $ 0

let numberArray = [1,2,3,4,5,6,7]
let squaredNumberArray = customMAp(arr: numberArray) {number in number * number
}
print(squaredNumberArray)
