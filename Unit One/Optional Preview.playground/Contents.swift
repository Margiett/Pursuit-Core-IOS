import UIKit
//optional - used to indicate that a value MAY exist
//              teo possible outcomes
//             outcome 1: there is a value and it can be used as normal
//             outcome 2: there isnt a value, in Swift terms it's nil
/*
 string?
 bool?
 Int?
 Double?
 Character?
 */
/*
 ways to unwrap an optional:
 -forced unwrapping e.g Int(response)!
 - nil-coelscing e.g Int(response) ?? 21
 - optional binding e.g if let bindingValue = optionalValue { ...we can use binding value here..}else { ... }
 4. implicit unwrapping e.g var name: String!
 */
// attempting to cast a String to an Int using this e.g Int ("45")
let floatValue: Float = 45.9
let doubleValue = 10.3
let result = Double(floatValue) + doubleValue
let response = "27"

//var age = Int(respinse)! - force unwrapping
var age = Int(response) ?? 21 // nil coelescing
age + 10
if let yourAge = Int(response) { // optional binding
  print("the age you entered is \(yourAge)")
} else {
    print("the response value is nil")
}
age + 10
