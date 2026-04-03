import UIKit

var greeting = "Hello, playground"
// Singleton
class APIManager {
    static let shared = APIManager()
    init() {}
    func temp() {
        
    }
}

class A {
    func config() {
        let manager = APIManager()
        manager.temp() // call through object property
        APIManager.shared.temp() // call through class property
    }
}
