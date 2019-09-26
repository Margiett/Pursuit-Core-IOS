import UIKit

var str = "Hello, playground"

// comment

// Data Types: Strings, Int (intergar) is a whole number

// declared a veriable fellowName of type String

// type inference: implicit declaration of a variable
var fellowName = "David Lin"


// type Annotation - explicity writing the data type using : (colon)
var cohort: String = "IOS 6.3"

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

//==========================================================
//                     Double
//==========================================================

var balance = 100005.9

// re-assign balance a new value of 85000
balance = balance + 85_000

print(balance)
 


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
let numSix = 24.0%5.0
let c =

let numThree = 24/5
let numFour = 24.0/5.0
let b = numThree == numFour



var i = 0
i == 5
i += 3
i *= 2
i %= 3
i -= 3

print(i)






