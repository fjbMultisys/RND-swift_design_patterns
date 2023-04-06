/*

2. Factory
Definition
The Factory pattern is a creational design pattern that defines an interface or abstract class for creating objects in a superclass, but allows subclasses to alter the type of objects that will be created.

Pros
Decouples the object creation code from the client code.
Provides a way to create objects based on a common interface or abstract class.
Cons
Adding new subclasses to the factory can be cumbersome and lead to the creation of a large number of classes.
Can add additional complexity to the codebase.


Code Sample
*/


import UIKit

protocol Product {
    func use()
}

class ConcreteProductA: Product {
    func use() {
        print("Using ConcreteProductA")
    }
}

class ConcreteProductB: Product {
    func use() {
        print("Using ConcreteProductB")
    }
}

class Factory {
    func createProduct(type: Int) -> Product {
        switch type {
        case 1:
            return ConcreteProductA()
        case 2:
            return ConcreteProductB()
        default:
            fatalError("Invalid product type")
        }
    }
}

let factory = Factory()
let productA = factory.createProduct(type: 1)
let productB = factory.createProduct(type: 2)

productA.use() // Output: Using ConcreteProductA
productB.use() // Output: Using ConcreteProductB
