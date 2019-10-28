import UIKit

var numberOfBoys: Double = 20
var numberOfGirls: Double = 60

var pBoys = numberOfBoys / (numberOfBoys + numberOfGirls) * 100

var pGirls = numberOfGirls / ( numberOfBoys + numberOfGirls) * 100
print(pBoys)

print(pGirls)



//print(


















//smift
/*
 Swift was introduce in 2014
 -Swift is type safe language meaning you cant mix a declare data type with another e.g if var name = "Alex"
 
 you cannot update name = 10 // wont compile type String is not an int
 - is also a modern language
 - provides optinals that allows us to know whether a variable has a value or not
 */


var str = "Hello, playground"

// comment

// Data Types: Strings, Int (intergar) is a whole number
// Data Types: String, Int (Interger)
//=====================================================================
//                             String
//=====================================================================

// declared a veriable fellowName of type String

// type inference: implicit declaration of a variable
var fellowName = "David Lin"

fellowName = "Chelsi Christmas"

print(fellowName) // Chelsi Christmas

fellowName = "34"


//DOES NOT COMPILE - CANNOT ADD DIFFERENT DATA TYPES
//let newString = "34" + 23

let fullName = "Alex" + " Paul" // ALex Paul

var fallCycle = "IOS 6.3"

print("\(fullName) is the IOS Instructor for \(fallCycle)")

print("Person's full name is \(fullName)")

print(fullName + "is the iOS Instructor for \(fallCycle)")

// using String interpolation we are printing fullName's decription

print(fullName)



// type Annotation - explicity writing the data type using : (colon)
var cohort: String = "IOS 6.3"

let lowercaseName = "alex"
let uppercaseName = "Alex"

let StringResult = lowercaseName == uppercaseName

let alphabeticalOrder = "kelyby" < "Lorraine"
print("alphabeticalOrder result \(alphabeticalOrder)")



//=====================================================================
//                     Character
//=====================================================================

var alphabet: Character = "c"

// mutating cohort
// var is mutable - meaning can be changed
cohort = "IOS 7.3"

//=====================================================================
//                               int
//=====================================================================

// declared variable age and initialized value to 32
var ageOfFellow = 32

var futureAge = ageOfFellow + 8

futureAge

// String interoikation is embedding a variable into a string using \(variable name) syntax as seen below

print ("Age of Fellow 8 years from now is \(futureAge)")

// interger division truncates

//==========================================================
//                     Division by 0
//==========================================================




//==========================================================
//                     Double
//==========================================================

var balance = 100005.9

// re-assign balance a new value of 85000
balance = balance + 85_000

print(balance)
 
// floating point division keeps decimals
//let floatingPointDivison = 16.0 / 3.0

// or

let floatingPointDivison: Double = 16 / 3


print("floating point division is \(floatingPointDivison)")

//==========================================================
//                     Float vs Double
// Float holds 32-bit vs 64-bit of a Double
//==========================================================

let floatNum: Float = 67.990776788943
let doubleNum = 67.990776788943

print("float is \(floatNum) and double is \(doubleNum)")

// DOES NOT COMPILE - CANNOT ADD A FLOAT WITH A DOUBLE
// LET ACCOUNTBALANCE = FLOATNUM + DOUBLENUM


// here we are casting (coverting) a Float to a double
let accountBalance = Double(floatNum) + doubleNum

print("account balance is now \(accountBalance)")








//==========================================================
//                      Short hand arithmetic
//==========================================================


balance -= 18_0000

balance = balance - 18_0000


print(balance)


//================================================================================
//                     Boolean - Bool, Comparison operators
//================================================================================


var results = 70 < 100

print(results)

var otherResult = results && true

print(otherResult)

-5 > -2 && 3 >= -5

//================================================================================
//                             Arithmetic operator
//================================================================================

var salary = 2_0000
salary *= 2

print(salary)

//================================================================================
//    THIS DOES NOT COMPILE - LET CANNOT BE CHANGES IS IMMUATABLE - CONSTANT
//================================================================================

//let salary = 2_0000
//salary *= 2
// this line above is the same as (salary = salary = * 2)
//print(salary)

var marathonTime = 600 // 6 hours
marathonTime /= 2
print(marathonTime)


//================================================================================
//                     Module operator or Remainder operator
//================================================================================

var modResult = 16 % 3

print(modResult)

var even = 12 % 6

print(even)

1+4*2/2+2





let numOne = 4.0
let numTwo = 4.0
let a = numOne == numTwo

let numSeven = 4.0 + 1.2
let numEight = 5.0 + 2
let d = numSeven == numEight

let numFive = 24%5

//let numSix = 24.0%5.0
//let c =
// code does not work

let numThree = 24/5
let numFour = 24.0/5.0
//let b = numThree == numFour
// code does not work


var i = 0
i == 5
i += 3
i *= 2
i %= 3
i -= 3

print(i)





//================================================================================
//                     Module operator or Remainder operator
//================================================================================


let pi = 3.14




let tru = "hello world" == "Hello World"

let fal = 7.0 / 2.0 == 3.5

let twelve: Double = 12.0
let thirteen: Float = 13

//let answer = twelve + thirteen

//let nameOfPrincipal: Character = "Mrs. Watkins"

//var temperatureOutside: Int = 90.7

//let whiteHouseAddress: Int + String = 1600 + "Pennsylvania Ave"

//ar peopleAtParty: Double = "95"

//!(4 + 3 < 2 * 4)

//!(1 + 1 != 2) && !(3 >= 3)

(3 < 2 || (0 < 1 && 3 >= 3)) && true

//!!(!!true && !!false)

true && (true && (true && (true || false)))

Example 1
Input:

var a = 1

var b = 2

var sum = a + balance




Expected values:
sum = 3

Output:
3

Example 2
Input:
var a = 13
var b = 22

Expected values:
sum = 35

Output:
35





The number of seconds in a year is 365 times the number of seconds in a day.
The number of seconds in a day is 24 times the number of seconds in a hour.
The number of seconds in a hour is 60 times the number of seconds in a minute, which is 60.



