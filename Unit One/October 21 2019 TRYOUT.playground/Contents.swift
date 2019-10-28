import UIKit

class Store {
    var customers: [String] = []
    var cashOnHand: Double = 0
    func printDescription() {
        print("This is a store")
    }
}

class Bookstore: Store {
    var numberOfBooks = 0
    func printDescription() {
        print("This is a bookstore with \(numberOfBooks) books")
    }
}

let myStore = Bookstore()
myStore.numberOfBooks = 10000
myStore.printDescription()
