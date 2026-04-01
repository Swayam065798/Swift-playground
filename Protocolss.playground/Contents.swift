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
