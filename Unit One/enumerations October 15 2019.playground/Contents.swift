import UIKit

// enumerations or enums: a group of relation value or items
// e.g days of the week, mta train lines, numbers of fingers,
// compass point

// enum key word starts the enum definition
// followed by the name of the enum, which should start with a capital letter to keep with swift coding convention, also this signfies that the enum is a data type to the reader of your code CompassPoint
enum CompassPoint {
    case north
    case south
    case east
    case west
    
}

// create an enum of days of the week

enum DaysOfTheWeek {
    case sunday
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
    case saturday
}

enum Planet {
    case mercuty, venus, earth, mars, jupiter, saturn, uranus, neptune
    
}
// using a swith statement we will switch on an enum instance

//==========================================================================
//using a switch statment we will switch on an enum instance
//===========================================================================

// instance of a string
let name = "Bob"

// creating a instance if the enum DayOfTheWeek

let day = DaysOfTheWeek.tuesday
var weekend = DaysOfTheWeek.saturday
weekend = .sunday
//var someDay = .friday DOES NOT COMPILE, CANT INFER TYPE IS ENUM

switch day {
case DaysOfTheWeek.monday:
    print("Back to Pursuit")
case DaysOfTheWeek.tuesday:
    print("Enum lab is due")
case.wednesday:
    print("professional skills")
case.thursday:
    print("introduction to class")
case.friday:
    print("classes and calculator lab are due")
case.saturday:
    print("what should i do today")
case.sunday:
    print("maybe i should do some prep work for class tomorrow?")
    
    //default: // will never be executed as all cases are handled above
    //print()
}
//===========================================================================
// iterating through an enum's cases
//===========================================================================

//Beverages enum is conforming to the protocol CaseIterable
//by conforming to CaseIterable we are able to get a count
// of all the cases in an enum

enum Beverage {
    case coffee, tea, juice
}

print("There are \(Beverage.allCases.count) beverage")

for drink in Beverage.allCases {
    print("current beverage is \(drink)")
    
}
