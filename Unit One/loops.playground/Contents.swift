import Foundation

//var str = "Hello, playground"
//
//print(str)
//print(str)
//print(str)
//print(str)
//print(str)

// ============================================================================================
//                           range - close range and half range
//=============================================================================================
let closeRange = 1...10
// inclusive ot close range does not include range
let halfRange = 1..<10
// exclusive or half close range
// ===========================================================================================
//                                     for in loop
//=============================================================================================
for num in 1...10 {
    // inclusively prints 1 to 10 3 dots are a range
    //print() default terminator is
//    print("Antonio \n flores")
    // the new line character
    if num > 9 {
    print(num, terminator: " ")
    }else {
        print(num, terminator: ",")
    }
    // default parameter is "\n" replace with " "
}
// ===========================================================================================
//                                  preview using loops with arrays
//=============================================================================================
// array of String's
let pursuitStacks = ["iOS", "web", "android"]
for pursuitClass in pursuitStacks {
    // printing using String Interpolation
  print("Pursuit class is \(pursuitClass)")
}
let fellow = ["Tiffany", "Yulia", "Joshua", "Maitree"]

for fellow in fellow {
    if fellow == "Joshua" {
        print("\(fellow) is awesome !")
    } else {
    print("\(fellow) is awesome too")
    }
}
let temperature = [69,75,87,64,64,61,68]
for temp in temperature {
    switch temp {
    case 87...:
        print("catch me at the beach")
    default:
        print("Just another day")
}
}
let message = "Happy Monday iOS 6.3"
// question: use a for loop to print the message variables 5 times
for _ in 0..<5 { // ... is inclusive, ..< exclusive
    // first time it is 0
    //next time it is 1
    // next time it is 2
    //next time it is 3
    // next time is it 4
    print(message)
  
}

// ===========================================================================================
//                                 Control transfer statement
//                                   where, break, continue
//=============================================================================================
//Question: use where to print ONLY number ending in 5 inclusively
// % = reminder and the 10 is what you are divin the number with so the reminder can be 5
// where
for number in 1...100 where number % 10 == 5 {
    print("\(number) last digit is 5")
}
// break exit loop or end loop, stop looping
for num in 1...10 {
    if num == 7 {
        print("Happy birthday, Miles")
        break
    }else {
        print("Not your birthday yet, your're only \(num) years old")
    }
}
for num in 1...10 {
    if num % 2 == 0 { // even numbers
        //increment (add)
        //increment to next value
        // e.g if current value is 2
        
        // 2 mod (modulo operator - remainder) 2 or 2 % 2 is 0 s
        //next value is
        continue // to the next value
    }
print(num)
    }

// ===========================================================================================
//                                 while loop
//=============================================================================================
var seconds = 30
while seconds >= 0 {
    print("countdown \(seconds)....")
    //while condition NEEDS a way to stop the loop
    //or it will run infinertely (forever) until your
    //playground explodes hahahahaha runs our of resource
    
    // without decrementing seconds the while loop
    // whill be in whats known as an (indefinite loop
   if seconds == 0 {// decrementing seconds by 1
    print("rocket")
} else {
    print("countdown \(seconds)....")
}
// while condition NEEDS a way to stop the loop
//or it will run infinetely (fourever) until your
//playground explodes hahahah runs out of resource
}
//================================================================================================================================
//                                               repeat-while loop
//================================================================================================================================

var str = "Hello, Playground"
//using the str variable print "Hello playground" five times using a for-in loop

for _ in 1...5{
    print(str)
}


// TERMINATOR


for num in 1...10 {
    // inclusively prints 1 to 10 3 dots are a range
    //print() default terminator is
//    print("Antonio \n flores")
    // the new line character
    if num > 9 {
    print(num, terminator: " ")
    }else {
        print(num, terminator: ",")
    }
    // default parameter is "\n" replace with " "
}


var newString = "Hola Margiett"

