import UIKit

// Strings Part 2

// question: given a String switch on it and print all the characters if it is even or print every other character if it is odd

let message = "Bad boy"

print("there are \(message.count) characters in the string")

if message.count % 2 == 0 {
  print("string is even")
} else {
  print("string is odd")
}

// solution for question above:
switch message {
case message where message.count % 2 == 0:
  for char in message {
    print(char, terminator: " ")
  }
default:
  for (index, char) in message.enumerated() where index % 2 == 0 {
    print(char, terminator: " ")
  }
}
print()
// "\n" is the endline escape character

//================================================
//               escape characters
//  e.g "\n" - newline "\t" - tab "\"" - quote
//================================================
// newline example
let message1 = "Hello\niOS 6.3\nGreat to have you!"
print(message1)

let tabsMessage = "\tProgramming is Fun"
print(tabsMessage)

let quote = "In \"2014\" Swift was introduced"
print(quote)

let multiline = """
Hello
It's
Hot out today
"""

print(multiline)


//================================================
//        Using String initialization methods
//================================================

// declaring and initializing a Character
// we have to explictly use type annotation to get a valid Character data type
let char: Character = "a"

// initializing a String from a Character
let str = String(char)

print(type(of: char))
print(type(of: str))

// initialize a String from an Integer (Int)
let currentYear = String(2019)
print("current year is \(currentYear)")

let float: Float = 23.56
let double = 45.12
let result = Double(float) + double
print(result)

//================================================
//  string format e.g formatting decimal places
//================================================
print("the result of the calculation above is", String(format: "%.2f", result))

//================================================
//          some character properties
//================================================
let character1: Character = "y"
if character1.isLetterf {
    print("\(character1") is a letter)
    
}

//isCurrency e.g $
// isPunctuation e.g ?
//isNumer: e/g 4













