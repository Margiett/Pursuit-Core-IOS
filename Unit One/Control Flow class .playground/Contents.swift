
    
    
// Control Flow, Tuples

// if / else

// block of code {code in here }

/*
 //example 1 - if statement
 if (some condition is true) {
 execute code
 }
 other code runs as normal
 
 //Example 2 - if/ekse statment
 if (some condition is true){
 execute this block of code
 }else{
 something other statement will get executed
 }
 
 // Example #3 - if/else if/else
 
 */

// built - in functions we have seen so far include

/* print ()
 lowercased()
 round() - e.g 1.345 => 1.35
 */

//=====================================================
//                      if/else
//=====================================================
var day = "Friday"//.lowercased ()

if day == "friday"{
    print("woohoo TGIF 🍺")
}
print("control flow is cool")


//=====================================================
//                      if/else
//=====================================================


day = "Monday".lowercased ()

if day == "saturday"{
    print("its a beach day")
}else{
    print("just another day")
}

day = "monday"

print("Today is \(day)")

//=====================================================
//                      if/else if / else
//=====================================================

var temprature: Double = 0 //degrees

if temprature < 45 {  // scope of it block is writing curly bracket {...}
    print("it's cold don't forget your gloves")
    if temprature == 0 {  //nested if statement
        print("I'm dead")
    }
    //danger zone approaching pyramid of death
    //   if{
    //     if{
    //       if{
    //         if{
    //            }
    //           }
    //          }
    //         }
}else if temprature == 85{
    print("this is my kind of weather")
    
}else{
    print("the temprature for today is \(temprature)")
}

// ----------------------------------------------------------
//                  Ternary Operator - means 3
//
//(condition - means evaluates to true or false)




//=====================================================
//                   switch Statement
//=====================================================

var cohort = "iOS"

switch cohort {
case "iOS".lowercased():
    print("iOs is awesome !!!!")
    print("great to have your guys")
case "android":
    print("full stack dudes and duddesttes")
case "web":
    print("full stack dudes and duddettes")
    //print("python blah") // DRY do not repeat yourself
fallthrough // exectutes the following case
case "backend":
    print("python is cool")
default:
    print("not part of pursuit")
}

//=================================================================
//                             Rangers
//=================================================================

let ageRequirment = 18 ... 35 // close range includes all values
// 18 is the lowerBound and 35 is the upperBound

//let halfRangeExample = 18... < 35:
//does NOT include 35

//let decimaRange = 18.5... 23.8:


//=================================================================
//                   switch Statement on Rangers
//=================================================================
let classNumber = 2.3 //2.3 from coalition for Queens (C$Q) prior to changing to Pursuit

switch classNumber{
case 0..<2: // hald-open range, includes 0 and 1, NOT 2
    print("it's 2014 Coalition for Queens got founded. Now known as Pursuit, also Swift was announced that year at WWDC")
case 2..<3:
    print("it's 2015 and objectiive-C is still the leading language to write iOS apps.")
case 3..<4:
    print("2016")
case 4..<5:
    print("2017")
case 5..<6:
    print("2018")
case 6..<7:
    print("it's 2019 and swiftUI was introduced at WWDC in San Jose")
default:
    print("see you in 2020")
    
}

//=================================================================
//                     Tuples
//=================================================================

let coordinate = (40.7429595, -73.9441102)
coordinate.0
coordinate.1

var socials = (twitter: "@alexpaul", instagram: "@alexcpaul")
socials.twitter
socials.instagram

//=================================================================
//                     Switch Statement on Tuple
//=================================================================

let kim = (age: 19, cohort: 6.1, passion: "music")
let healther = (age: 23, cohort: 6.4, passion: "immigrantion rights")
let nancy = (age: 34, cohort: 6.3, passion: "video games")


let currentFellow = kim

switch currentFellow {
case(18..<21, _, _):
  print("not allowed to drink at events")
case(_, 6.3,_):
  print("iOS is awesome!!!!")
case(_, _, "video games"):
  print("see you at Pursuit's Game night, bring the drinks")
default:
  print("not a current a fellow")
}
// format for automatically indetation of code
// command + a, to select all code in playground
// for formatting: control + i



