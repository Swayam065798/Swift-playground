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

// Protocol extension

protocol Printable {
    var title: String{ get }
    var subtitle: String{ get }
    func printPage()
}

extension Printable {
    func printPage() {
        Swift.print("The title is \(title) subtitle is \(subtitle)")
    }
    
}

struct PrintPage: Printable {
    var title: String
    var subtitle: String
    
    init(title: String, subtitle: String) {
        self.title = title
        self.subtitle = subtitle
    }
}
let pp = PrintPage(title: "LOrem Ipsum", subtitle: "Lorem Ipsum lorem soren")
pp.printPage()


// protocol composition with extensions

protocol MediaAsset {
    func printMediaAsset()
}

protocol MediaAssetSecond {
func printMediaAssetSecond()
}

// protocol composition
typealias MediaAssetOneandTwo = MediaAsset & MediaAssetSecond

let a = [1, 2, 3]
let b = [4, 5]

print(a + b)


