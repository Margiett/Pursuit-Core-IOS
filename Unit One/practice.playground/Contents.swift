let myStapleItemsD = ["Cheese", "Milk", "Eggs", "Butter", "Bread"]
var myShoppingListD = ["Crackers", "Chips", "Salsa"]

for itemOne in myShoppingListD {
 for itemTwo in myStapleItemsD {
 myShoppingListD.append(itemTwo)
 }
}
let d = myShoppingListD.count



//==================================================================================================
let temperatureInFahrenheit = 8

switch temperatureInFahrenheit {
case 1...40:
    print("it's cold out")
case 85...100:
    print("it's really warm")
default:
    print("Weather is moderate")
}
//==================================================================================================

let firstName = "Peter"
var lastName:String = " "

if firstName == "Peter" {
 lastName = "Gabriel"
} else if firstName == "Phil" {
lastName = "Collins"
}
let fullName = firstName + " " + lastName

print(fullName)
//=================================================================================================

let BirthYear = (1992,"Jasmin")

switch BirthYear.0 {
case 1990...1999:
    print("You are in your twenties \(BirthYear.1)")
case 1980...1989:
 print("You are in your thirties")
default:
 print("You are old my Friend")
}
//==================================================================================================
let numberGrade = 61

switch numberGrade {
case 100:
    print("A+")
case 90...99:
    print("A")
case 80...89:
    print("B")
case 70...79:
    print("C")
case 65...69:
    print("D")
default:
    print("F")
}
//=================================================================================================
var numberOfSides = 8

switch numberOfSides {
case 4:
    print("Square")
case 3:
    print("triangle")
case 8:
    print("Octagon")
default:
    print("error")
}
let nameAndBirthYear = (1990, "Jasmin")
if 1990...1999 ~= nameAndBirthYear.0{
print("You are in your twenties Jasmin")
}
//=============================================================================================
let game = "paper"
var handGame:String = " "

if game == "rock"{
handGame = "scissors"
print("You Win !")
} else if game == "paper"{
handGame = "scissors"
print("You lose !")
}

//==================================================================================================
var population: Int = 10000
var message = String()

if population > 10000 {
 message = "\(population) is a large town"
//} else if population: Int = 5000..<10000{
//==================================================================================================
