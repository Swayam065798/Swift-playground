import UIKit

var greeting = "Hello, playground"

protocol MySampleProtocol {
    var name: String { get }
    func getMyname()
}

extension MySampleProtocol {
    func getMyname() {
        print("Hau haguraaa.....")
    }
}

struct User: MySampleProtocol {
    var name: String
}
 let user = User(name: "Swayam")
 print(user.getMyname())


// Multiple protocols --> Conformi
protocol Flyable {
    func fly()
}

protocol Swimmable {
    func swim()
}

struct Duck: Flyable, Swimmable {
    func fly() { print("Duck is flying") }
    func swim() { print("Duck is swimming") }
}
