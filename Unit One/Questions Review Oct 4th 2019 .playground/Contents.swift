import UIKit

// Question review October 4th 2019

// String Lab
//Question 15 given a String use a for-in loop to reverse it. e.g input: "Hello" output:"olleh"

let message = "hello"
var reversedString = " "
let str1 = " "
let str2 = " "
if str1.isEmpty { print("str1 is empty")
} else {
    print("Str2 is empty")
    
}
if str2.isEmpty {
    print("str1 is Not empty")
    
}
print()

for currentChar in message {
   // reversedString += String (currentChar)
    // we want to loop through the given message string and add the characters we visit in reverse order to our reversedString variable
    
    reversedString = currentChar.description + reversedString
    
    //(reversedString + currentChar
    // 1. "" + "h" => ""
    // 2. "e" + "h" => "eh"
    // 3. "l" + "eh" => "leh"
    // 4. "l" + "leh" => "lleh"
    //5. "o" + "lleh" => "Olleh"
}
print(reversedString)
// Array Lab

/*
 Question:
 Given an array of Strings, find the string with the most a's in it
 
 input: ["apes", "abba", "apple"]
 
 output:abba
 */
let arr = ["apes", "abba", "apple", "banana"]

// how do we keep track of the sting with the most "a" characters?
//
var overAllCount = 0
var stringWithMostAs = ""

for str in arr {
    // in the future we can use filter {} here
    
    //we will create a local variable to keep track of a's in current String
    var localCount = 0 // had local scope within the for in loop
    // scope means a variable can only be accessed with it curly  bracket boundaries {....}
    for char in str { // string.element is the same as character
        if char == "a" { // " apes "
            localCount += 1
            
        }
        
    }
    // here we will comparing a's count
    if localCount > overAllCount { // 1st time looking at apes, apes is more
        overAllCount = localCount //overide overalCount
        stringWithMostAs = str  // overide the String bring tracked
        
    }
}

print("\(stringWithMostAs) has the most a's which a count of \(overAllCount)")





















