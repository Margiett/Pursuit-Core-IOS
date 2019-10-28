import UIKit

// Strings - collect of unicode compliant characters
/*
 Vocabulary
 - unicode
 -character
 - literal String e.g "hello"
 */
// declaring and initializing a literal String
var message = "Good morning iOs 6.3"

for char in message {
    print("charaxter is \(char)")
}
// length of string using the count property
print("message count is \(message.count)")

"melinda".count

//=================================================================================================
//                            unicode
// e.g a space in unicode U+0020
//=================================================================================================

// a character is made up or one or more unicode scalars
// e.g of unicode scaler \u{301} e
let name = "ale\u{301}x"

let bagel = ""

//comparing unicode scalar with character
let unicodeLowercaseE = "\u{0065}"
let eCharacter = "e"
if unicodeLowercaseE == eCharacter {
    
}
//=================================================================================================
//                            making a range using indices
//=================================================================================================
let alphabet = "abcdefghijklmnopqrstuvwxyz"
//using a for loop print out the first 6 characters in the alphabet
var counter = 0
for char in alphabet { // 0, 1,2 ,3,4,5,
    if counter < 6 {
    print(char)
    counter += 1
} else { break }
}
print("for loop has ended")

// using a for-loop and enumerated print the first six alphabets
for (index, alphabet) in alphabet.enumerated() {
    if index < 6 {
        print(alphabet)
    }else { break }
}
let aphabetStartIndex = alphabet.startIndex
//=================================================================================================
//
//=================================================================================================
