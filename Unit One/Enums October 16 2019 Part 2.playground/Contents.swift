import UIKit

// enums part 2
//enum MTALine {
//    case redLine
//    case greenLine
//    case purpleLine
//    case blueLine
//    case orangeLine
//    case brownLine
//    case yellowLine
//    case grayLine
//
//}
//let train = MTALine.yellowLine
//
//switch train {
//case .redLine:
//    print("The 1,2,3, trains are running on time.")
//case .yellowLine
//    print("The R train is not running today")
//default:
//    print("All trains are running normally")
//}


//==============================================
//   associated values - adds more values (types) to a case
//==============================================

enum MTALine {
    case redLine(Int)
    case greenLine(Int)
    case purpleLine
    case blueLine
    case orangeLine
    case brownLine
    case yellowLine(trainName: Character, startTime: Int, endTime: Int)
    case grayLine
    
}
//1. add an associated value for greenLight of type Int use 4, 5 or 6 to create a new instance of a constant named fiveTrain using out trainInformation() function pass in the fiveTrain instance, add a new case in the swith statement for .greenLine

//instantiating a train using the MTALine
// 3 instances of MTALine below, namely rTrain, oneTrain and fiveTrain
let rTrain = MTALine.yellowLine(trainName: "R", startTime: 8, endTime: 12)
let oneTrain = MTALine.redLine(1)
let fiveTrain = MTALine.greenLine(5)



//using enum with func
func trainInformation(train: MTALine){
switch train {
case .redLine:
    print("The 1,2,3, trains are running on time.")
case .greenLine: // not a requirement but you can also do
    //case /greenLine(let trainName):
    //print(" You're on the \(trainName) train, maybe stop at the bowling Green and takr a city walk")
 print(" You're on the 5 train, maybe stop at the bowling Green and takr a city walk")
case .yellowLine(let trainName, let sTime, let eTime):
print("\(trainName) train runs from \(sTime)am to \(eTime)am")
default:
    print("All trains are running normally")
}
}

trainInformation(train: rTrain)
trainInformation(train: oneTrain)
trainInformation(train: fiveTrain)
//=============================================================================
// Alex Notes
//=============================================================================
//>>>>>>>>>>>>>>>>>>>>>>>>>>>>>A L E X N O T E S <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
// enums part 2
//
////====================================================
//// associated values - adds more value (types) to a case
////====================================================
//
//enum MTALine {
//  case redLine(Int)
//  case greenLine(Int)
//  case purpleLine
//  case blueLine
//  case orangeLine
//  case brownLine
//  case yellowLine(trainName: Character, startTime: Int, endTime: Int)
//  case grayLine
//}
//
//// 1. add an associated value for greenLine of type Int use 4, 5 or 6 to create a new instance of a constant named fiveTrain
//// using our trainInformation() pass in the fiveTrain instance, add a new case in the switch statement for .greenLine
//
//// instantiating a train using the MTALine
//// 3 instances of MTALine below, namely rTrain, oneTrain and fiveTrain
//let rTrain = MTALine.yellowLine(trainName: "R", startTime: 8, endTime: 12)
//let oneTrain = MTALine.redLine(1)
//let fiveTrain = MTALine.greenLine(5)
//
//func trainInformation(train: MTALine) {
//  switch train {
//  case .greenLine(let trainName):
//    print("You're on the \(trainName) train, maybe stop at Bowling Green and take a city walk.")
//  case .redLine:
//    print("The 1, 2, 3 tains are running on time.")
//  case .yellowLine(let trainName, let sTime, let eTime):
//    print("\(trainName) train runs from \(sTime)am to \(eTime)am")
//  default:
//    print("All trains are running normally.")
//  }
//}
//trainInformation(train: rTrain)
//trainInformation(train: oneTrain)
//trainInformation(train: fiveTrain)
//
////==========================================================
//// declaring methods inside enums
////==========================================================
//
//enum ProgrammingLanguage {
//  case swift
//  case python
//  case objectivec
//  case go
//  case r
//  case java
//  case javascript
//
//  // functions in custom types are called methods
//  func info() {
//    // we need to switch on an instance of ProgrammingLanguage
//    switch self { // self if the instance that calls info()
//    case .objectivec:
//      print("Last major update was in 2014")
//    case .swift:
//      print("Swift was introduced in 2014")
//    case .java:
//      print("Java is used to build android apps, also heavily used on Wall Street.")
//    default:
//      print("All languages are fun!!!!!")
//    }
//  }
//
//  func salaryInfo() {
//    switch self {
//    case .swift:
//      print("$1 million starting salary")
//    default:
//      print("Wasting your time")
//    }
//  }
//}
//
//// swiftLanguage is an instance of ProgammingLanguage
//let swiftLanguage = ProgrammingLanguage.swift
//swiftLanguage.info()
//
//swiftLanguage.salaryInfo()
//
//// create a ProgrmmaingLanguage instance that's not swift and call .salaryInfo() method
//let javaLanguage = ProgrammingLanguage.java
//javaLanguage.salaryInfo()
//
//
////==========================================================
//// raw values
////==========================================================
//
//enum Day: Int {
//  case monday = 1 // default is 0 if value not supplied
//  case tuesday
//  case wednesday
//  case thursday
//  case friday
//  case saturday
//  case sunday
//}
//
//enum Fellow {
//  case cohortCycle
//}
//
//// print(Fellow.cohortCycle.rawValue) DOES NOT COMPILE NO RAWVALUE PROVIDED
//
//print(Day.monday.rawValue) // default starting case of an Int rawValue is 0
//
//print(Day.tuesday.rawValue)
//
////==========================================================
//// initializing an instance of an enum with a rawValue
////==========================================================
//
//// nil-coalescing to unwrap optional enum rawValue type
//let weekend = Day(rawValue: 10) ?? Day.saturday
//print(weekend)
//
//// optional-binding to unwrap optional enum
//if let possibleDayOff = Day(rawValue: 6) {
//  switch possibleDayOff {
//  case .saturday:
//    print("Great day for a BBQ")
//  case .sunday:
//    print("Really want to go swimming today 🏖")
//  default:
//    print("Just another day")
//  }
//} else {
//  print("Not a valid day of the week.")
//}

//>>>>>>>>>>>>>>>>>>>>>>>>>>A l e x N O T E S<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

//==========================================================
// declaring methods inside enums
//==========================================================

enum programingLanguage {
    case swift
    case python
    case objectivec
    case go
    case r
    case java
    case javascript
    // function in custom types are called methods
    func info() {
        // we need to switch on an instance of ProgrammingLanguage
        switch self {
            // self if the instance that calls info ()
        case .objectivec:
            print("Last major updates was in 2014")
        case .swift:
            print()
        case .java:
            print()
        default:
            print("All languages are fun !!!!!")
        }
    }
}
//swiftLanguage is an instance of programingLanguage
let swiftLanguage = programingLanguage.swift
swiftLanguage.info()

// create a programmingLanguage instance that's not swift and call . salaryInfo method
//let javaLanguage.salaryInfo()

//==========================================================
// raw values
//==========================================================

enum Day: Int {
    case monday = 1 // default is 0 if value not supplied
    case tuesday = 2
    case wednesday = 3
    case thursday = 4
    case friday = 5
    case saturday = 6
    case sunday = 7
        
}
enum Fellow {
    case cohortCycle
}
print(Day.monday.rawValue) // default starting case of an Int rawValue is 0

print(Day.tuesday.rawValue)
//===================================================================
// initializing an instance of an enum with a rawValue
//===================================================================
// nil-coalescing to unwrap optional enum rawValue type
// out default is saturday
let weekend = Day(rawValue: 10) ?? Day.saturday
print(weekend)

//optional-binding to unwrap optional enum
if let possiableDayOff = Day(rawValue: 6) {
    switch possiableDayOff {
    case .saturday:
    print("Great day for a BBQ")
    case .sunday:
    print("Really want to go swimming today")
    default:
    print("just another day")
}
} else {
print("not a valid day of the week.")
}

enum HigherOrderCommand: String {
 case map
 case filter
 case reduce
}

let commandString = "map"

if let command = HigherOrderCommand(rawValue: commandString) {
 switch command {
 case .map:
   print("now I will perform a map")
 case .filter:
   print("now I will perform a filter")
 case .reduce:
   print("now I will perform a reduce")
 }
} else {
   print("cant initialize enum case")
}


enum Shape {
 case square(side: Double)
 case triangle(height: Double, width: Double)
 case circle(raduis: Double)
 
 func area() -> Double {
   switch self {
   case .square(side: let side):
    return side * side
   case .triangle(height: let height, width: let width):
    return (width * height) / 2
   case .circle(raduis: let radius):
    return Double.pi * radius * radius
  }
 }
}

var myShape = Shape.triangle(height: 4.0, width: 3.0)
myShape = .square(side: 8.0)
print(myShape.area())



enum MadScientists: String {

case rickSanchez = "Time to get riggity riggity wrecked son!"

case doctorWho

}

var scientist = MadScientists.rickSanchez

switch scientist {

case .rickSanchez:

    print(scientist.rawValue)

case .doctorWho:

    print(scientist.rawValue)

}
