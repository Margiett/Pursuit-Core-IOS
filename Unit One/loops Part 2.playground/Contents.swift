import UIKit

var str = "Hello, playground"
for _ in 1...5 {
    print(str)
}
for num in 1...5{
    print(num)
}
var seconds = 10
while seconds >= 0 { // body, scope, block or the while all refers to whats between the open curly bracket { and the close } curly bracket
    print(seconds)
    seconds -= 1
}
//=============================================================================================================
//                                           repeat-while loop
//=============================================================================================================
var isPlaying = false
var currentLevel = 1
var finallevel = 10
repeat {
    // code here
    // using String interpolation to show current level
    if isPlaying {
        print("playing level \(currentLevel)")
        if currentLevel == finallevel {
            print("I will definetely recommend this game.")
            isPlaying = false // stop the game
        }
        currentLevel += 1
    }else {
        // player is seeing our game for the first time
        print("Trying out Pursuit Arcade for the first time")
        // in a macOS command line app you can prompt the user to contiune or not, this would set isPlaying to true or false
        isPlaying = true
    }
} while isPlaying == true
//=============================================================================================================
//                                           nested loop
//=============================================================================================================
for i in 1...5 {
    // n = 5 outer for loop -excutes 5 times
    //first time it enters the for loop i is 1
    for j in 1...5 {
        // first time it enters the for loop i is 1
        print("\(i) * \(j) = \(i * j)")
        // 1 * 1 is 1
        // 1 * 2 = 2
        // 1 * 3 = 3
        // 1 * 4 = 4
        // 1 * 5 = 5
        
        
        //2 * 1 = 2
        // 2 * 2 = 4
        
        
    }
}
//=============================================================================================================
//                                           labels in loops
//=============================================================================================================
let product = 50 // produce is the multiplication of two values e.g 4 * 5 = 20
outerloop: for i in 1...10 {
    innerloop: for j in 1...10 {
        if i * j == product {
            print("product was found by multiplying \(i) * \(j)")
            break outerloop
        } else {
            print("keep searching .....")
        }
    }
    innerloop2: for _ in 1...5 {
        print("hello Matt")
    }
    print("done running outerloop..")
}
