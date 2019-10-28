import UIKit

// classes: building block that enable us to create complex "objects" in out program. Those objects are created using properties and methods.
// =============================================
// class syntax
//==============================================

class myFirstClass {
    
}
//enums always have to be upper case you are creating your own data type
//Day not has added functionality to count how many cases it has e.g here it is 3 ???????
// ?? what does day not has added functionality to count how many cases it has  mean ? ??
//enum Day conforms (adds more functionality) to caseIterable
enum Day: CaseIterable{
    case monday, tuesday, wednesday
}
Day.allCases.count

// inheritenc you get everyting your parents have.

//======================================================
// inheritance strucks does not inherit from other strucks ONLY classes can inherit from other classes.
//======================================================

class Person {
    // person has properties name and age only class can inherit
    var name = "Jane Doe" // store property
    // ???????????????what is a store property, what does it do ???????????????????
    var age = 21
    
    // instance methods
    func info() { // info = name and age
         print("This is a person name is \(name) and age is \(age)")
    }
}

// Fellow inherits from person
// Fellow is a subclass of person
// person is the parent of superclass of fellow


//Fellow inherits from a person meaning Fellow has the properties of name and age


// the class fellow inherits from the person class above
class Fellow: Person {
    // func info will compile does not work because you can use the same method name so fellow needs to use the overide keyword
    // ?? if we over write info which is the parent would it override what the kid has ??
    // we do not change what our parents have we just override it
    // ????? what does override means if is not changing
    override func info() {
        // name comes from the parent person
        print("\(name) is a fellow at Pursuit and is \(age) yeats old")
    }
    
}
class Employee: Person {
    var position = "iOS developer"
var salary = 85_000
    
    // instance methods
    override func info() {
        print("\(position) is making $\(salary)")
    }
}

// here creating a instance of Fellow
// creating an instance is creating a verabile or a constant from that fellow
// in Switft we only have single inheritance, meaning you can Only inherit from one parent

// ???? does not inherit the values of that properties ?????

// you can get properties from the "mother" but you can also add your own properties

// how many properties does FELLOW have NOTHING ! ONYL PROPERTIES FELLOW HAS IS THE PARENTS
//??????? why is brendon 21 if the parent is 21 ?????

// object-oriented programming cpnsists on those concepts ??

// -inheritance Swift = only a single inheritance

// -encapsulation use private access modifiers on your properties and access them externally through methods ??????

// -polumorphism - changing the form of an object ???? a fellow can be a person and a fellow can be a fellow

let brendon = Fellow()
//over write what name is it use to be Jane Doe
brendon.name = "Brendon"
// over writing the age
brendon.age = 31
brendon.info()

// before the Fellow class over rode info() method from the person class this was the output from the print statment
// this person name is Brendon and age is 31

// after over ridding info() on the Fellow class the print statment comes from the overriden method
//"Brendon is a fellow at pursuit  and is 31 yeats old

//===================================================================
//>>>>>>>>>>>>>>>>>>>>>>.E X A M P L E <<<<<<<<<<<<<<<<<<<<<<<<<<<<<

// DOES NOT COMPILE - STRUCT CANNOT INHERIT FROM OTHER STRUCTS
//STRUCT ARTIST {} - IF ARTIST IS A PROTOCOL THAN CODE WILL COMPILE
//struct protocol
//struct Artist {
    
//}
//struct PopStar: Artist {
    
//}
// >>>>>>>>>>>>>>>>>>>>.E X A M P L E <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
//======================================================================



//=====================================================================================
//polymorpism - changing form on an object
//======================================================================================

// instance of a person
let tom = Person()
tom.name = "Tom"

// instance of an Employee

let john = Employee()
john.name = "John"

//instance of a fellow
let margiett = Fellow()
margiett.name = "Margiett"

// an array of instance from above
let people = [tom, john, margiett]

// if we were to loop over the people array what for example would be the infor() meesage for margiett

for person in people {
    person.info()

}

//===================================================================================
//struct are value-types - meaning assigning a new variable
//                         that new variable get a copy of the original. Changing the                           cop does not change the original
// classes ae reference types - multiples instance point to the same object meaning                                  object b can mutate object a
//======================================================================================

// creating an instance of Fellow() name anna
let anna = Fellow ()
anna.name = "Anna"
print(anna.name) // Anna

//assinging luba the anna object
let luba = anna
print(luba.name)  // Anna

// what is anns's name if printed

print(anna.name) // Luba


// accessing the name key in dict["name"]
//use typecasting of any type to string type using optional downcasting as ?
//use nil-coalescing to unwrap optional string? to string

let name = dict["name"] as? String ?? "no name avaiable"
let trackCount = dict["trackCount"] as? Int ?? 0
let description = dict["description"]
let isTop100 =
let playlist =
return kCVReturnDisplayLinkCallbacksNotSet
}

let playlist = getplaylist(dic: playlistDict)
print(playlist?.name ?? "playlist not created")









