import UIKit

// questions
//
//// dictionary question

// given an array of intergers write a function that returns a dictionary of occrurences of each interger
//input: [1,3,1,1,3,4,1,8,2,7,8]
//output: [7: 1,1: 4,3: 2, 8: 2, 2: 1, 4: 1]
func occurenceOfInterger(arr: [Int]) -> [Int: Int] {
    var frequencyDictionary = [Int: Int]()
    for number in arr {
        //first time visiting a number we want to set
        // the count of occurences to 1

        //frequencyDictionary[1]
        //let testType = frequencyDictionary[1]
        //testType is an optional Int ?
        //using optional binding to unwrap the
        //value at the given key in out frequenceyDictionary
        // enter if let statement if we have seen the number before and increment count by 1
        if let count = frequencyDictionary[number] {
            frequencyDictionary[number] = count + 1
        } else {
            //first time visiting a number we want to set
                   // the count of occurences to 1

            // appending of an element in the dictionary
            //happens here
            frequencyDictionary[number] = 1  // e.g 1:1
        }
    }
    return frequencyDictionary
}

// >>>>>>>>>>>>>>>CLOSURE<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<,

// write a function called largestValue(in: ) that finds the largest Int in an array Ints. Use reduce to solve this exercise

func largerestValue(in numbers: [Int]) {
    var result = 0
   
    result = numbers.reduce(0) { currentValue, nextValue in
        if currentValue > nextValue {
            return currentValue
        } else {
            return nextValue
        }
    }
    // number.reduce( 0 , *)
    return result
}
