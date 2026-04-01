import UIKit

var greeting = "Hello, playground"

var name: String?
name = nil
// Optionals are basically of enum type, it has 2 cases case none --> handled when having null value, case some--> handled when the variable holds any value


class Test {
    var name1: String? = String.empty
    var companyName: String? = .empty
    var cityName: String? = .empty
    func TestOptional() {
        if let name = name1, let companyName = companyName, let cityName = cityName {
            formAddress()
        }
    }
    
    func formAddress() {
        
    }
}

extension String {
    static let empty = ""
}
