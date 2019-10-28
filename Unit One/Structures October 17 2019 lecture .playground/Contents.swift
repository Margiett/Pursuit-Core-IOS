import UIKit

// structs: is a building block of a method in which we emulate an "object" in swift

// strucy syntax
// SomeStruct below defines an "object"
//object-oriented programming (OOP) - encapsulated properties and methods of real world objects
struct SomeStruct {
    
    //definition of the structs includes the following:
    //properties - variables or constants on the type (struct)
    //initializers - the method in which you create a type
    //method - function inside of a custom type (struct)
    
}

struct Resolution {
    // properties
    //stored properities - a property with a default value
    // a property is a variable or constant
    var width = 0
    var height = 0
}

//=============================================================================
// create an instance of Resolution struct
//=============================================================================

var someResolution = Resolution()

// accessing properties of Resolution using dot syntax
someResolution.width = 1080

print(someResolution)
// struct have a memberwise initializer as opposed to
// a class that does not
var vga = Resolution(width: 640, height: 480)

//=============================================================================
// structs and enums are *************** VALUES TYPES ***********************
//=============================================================================

let hd = Resolution(width: 1920, height: 1080)
// hd stays the same, you can make it a var is not a constant is a copy it forks it
var cinema = hd // cinema gets a ** copy *** of hd
//*** COPY DOES NOT CHANGE THE ORIGINAL OBJECT ****

// what is the value of cinema's here // 1920

print(cinema.width) // 1920

cinema.width = 2048

// what is the value of hd's width ????
print(hd.width) // 1920


//=============================================================================
// using object- oriented programming to model a fellow
//=============================================================================

enum ProgrammingLanguage {
    case swift
    case objectivec
    case java
    case javascript
    case python
    case noLanguage
    struct Project {
        var project = ""
        var projectDescription = ""
        var programmingLanguage = ProgrammingLanguage.noLanguage
    }
    enum Cohort {
        case iOS
        case android
        case web
        case datatype
    }
    
    struct Fellow {
        //======================================
        //properties- variable and constants
        //======================================
        var name = "John Appleseed" // store properties
        var cohort = Cohort.iOS // iOS, android, web, dataScience
        var programmingLanuages = [ProgrammingLanguage]()
        var githubURL = ""
        var linkedInURL = ""
        var hasProgrammingBackground = false
        var projects = [Project]() // projects
        //============================================================================
        // initializers
        //============================================================================
        //============================================================================
        //methods
        //============================================================================
        
        
        // class methods
        
        // instance methods
        func info () {
            print("\(name) currently has \(projects.count) profolio project(s)")
            
        }
        
       
    }
    // creating instances of "objects"
    
    // creating an instance using the default initializer of fellow()
    // creating an instance using the default initializer of Fellow()
//    var gregg = Fellow()
//    gregg.name = "Gregg"
//    gregg.cohort = .iOS
//    gregg.projects.append(Project(projectName: "Hangman", projectDescription: "Hangman command-line macOS application", language: .swift))
//    gregg.info()
//    // Fellow.info() DOES NOT COMPILE NOT A CLASS METHOD
//
//
//    // created an instance of Fellow called oscar and used the memberwise initializer
//    var oscar = Fellow(name: "Oscar", cohort: .iOS, programmingLanguages: [.swift], githubURL: "https://github.com", linkedInURL: "https://linkedIn.com", hasProgrammingBackground: false, projects: [Project]())
//    oscar.info()
//
//    //instance of project
//    let calculatorApp = Project(project: "Calculator", projectDescription: "Calculator commond-line application", programmingLanguage: .swift)
//
//
//    // add a project to oscar's portfolio
//    oscar.projects.append(calculatorApp)
//    oscar.projects.append(instagreamClone)
//
//    oscar.info
    
}
