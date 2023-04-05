/*
Singleton

Definition
The Singleton pattern is a creational design pattern that restricts the instantiation of a class to a single instance and provides a global point of access to that instance.

Pros
Provides a single point of control and a global point of access to an object.
Ensures that only one instance of a class is created throughout the lifecycle of the application.

Cons
Singleton pattern can sometimes introduce unnecessary coupling between components in a system.
Singleton pattern can be difficult to unit test, as it cannot be easily swapped out with a mock object.

*/

import UIKit

class Singleton {
    static let shared = Singleton()

    private init() {
        // Initialization code here
    }

    func someMethod() {
        // Do something
    }
}
