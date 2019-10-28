import UIKit

// Struts, classes, and initialization

struct Fellow {
    let age: Int
    var cohort: Double
    var currentlyEmployed: Bool // true or false
    // instance method
    mutating func employ(isEmployed: Bool) { // true or false
        currentlyEmployed = isEmployed
        //let testVar = isEmployed
    }
    
}

//making use of strut's memberwise initializer
// difference between class and structs
// - stucts have a memberwise initializer
// - classes do not have a memberwise initializer
// - classes have to provide an initializer if ANY of its properties do not have a default value
// - class have inheritance and structs do not
// due to the nature of the immuatability of a struct if you'ur in a function that modifies one of its properties that methods needs to be explicitly marked "mutating" in classes this is not a fact because classes are passed by reference which makes it mutatable by default

// why would we use classes instead of structs ????

var yulia = Fellow(age: 21, cohort: 6.3, currentlyEmployed: false)
if yulia .currentlyEmployed{
    print("when are you taking me out for lunch")
} else {
    print("Lunch is on me today")
}
yulia.employ(isEmployed: true)

class Animal {
    var age: Int
    var breed: String
    var color: String = "white"
    init(age: Int, breed: String){
        self.age = age
        self.breed = breed
        
    }
    //intance method
    func info() {
        print("The \(breed) is \(age) old and color is \(color)")
}


}
// Dog is inheriting Animal
// subclass in Dog, parent class in Animal
class Dog: Animal {
    
}
let frenchBulldog = Dog(age: 11, breed: "French Bulldog" )
frenchBulldog.info()


