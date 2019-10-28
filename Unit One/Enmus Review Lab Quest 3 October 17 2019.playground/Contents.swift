import UIKit

// Question Three
// You are given a Coin enumeration which describes different coin values.
// Write a function called getTotalValue(from:) that takes in an array
// of tuples of type (number: Int, coin: Coin), and returns the total value of all coins in cents.
enum Coin: Int {
  case penny = 1
  case nickle = 5
  case dime = 10
  case quarter = 25
}

// Your function here
// from = internal name
//labeling your data type the data type are Int and Coin
func getTotalValue(from tuples: [(numberOfCoins: Int, typeOfCoin: Coin)]) -> Int {
    // creating a var so we can create a return
    var totalNumberOfCent = 0
    // for tuples in the collection of tuples
    for tuple in tuples {
        // we are interested in changing the number not the coin ?
        switch tuple.typeOfCoin {
        case .penny:
            totalNumberOfCent += Coin.penny.rawValue * tuple.numberOfCoins
        case .nickle:
            totalNumberOfCent += Coin.nickle.rawValue * tuple.numberOfCoins
        case .dime:
            totalNumberOfCent += Coin.dime.rawValue * tuple.numberOfCoins
        case .quarter:
            totalNumberOfCent += Coin.quarter.rawValue * tuple.numberOfCoins
            
        // what does rawValue mean what does it do ??
            
        }
    }
    return totalNumberOfCent
}

// Uncomment the lines below to test your solution
// let coinArr: [(Int, Coin)] = [
//   (10, .penny),
//   (15, .nickle),
//   (3, .quarter),
//   (20, .penny),
//   (3, .dime),
//   (7, .quarter)
// ]
// let expectedTotal = 385
// let total = getTotalValue(from: coinArr)
// assert(total == expectedTotal, "Was expecting \(expectedTotal), but got \(total)")




