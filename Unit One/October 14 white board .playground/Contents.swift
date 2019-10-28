import UIKit

func vowels (word:String) -> (Int) {
let vowel = "aeiou"
var count = 0
for char in word {
    if vowel.contains(char) {
        count += 1
    }
   
    }
     return count
}
//Question 3

func outlier(arr:[Int]) -> (Int) {
let mapped = arr.map{($0, 1)
}
let dict = Dictionary(mapped, uniquingKeysWith: +)
    var result = Int()
for each in dict {
    if each.value == 1 {
    result = (each.key)
}
}
    return result

}
let input1 = [4,0,7,8,3,0,4,3,8]
print(outlier(arr: input1))




// Question 2

func product(number: [Int]) -> (Int) {
   var newnum = [Int]()
   var product = Int()
   for num in number {
       if num != 0 {
       newnum.append(num)
       product = newnum.reduce(1, *)
   }
   }
   return product
}
let input = [4, 0, 7, 8, 3, 0]
print(product(number: input))

// question 4

func capital(word: String) -> (String) {
    var seperated = word.components(separatedBy: " ")
    for (index, str) in seperated.enumerated() {
    seperated[index] = str.capitalized
}
return seperated.joined(separator: " ")
}
let sentence = "casandra estella"
capital(word:sentence)
