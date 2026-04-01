import UIKit

var greeting = "Hello, playground"

var name: Any
name = "Swayam"
name = 1
print(name)

//var test: AnyObject
//
//class Test {
//    var name: String?
//}

func fetchData(completion: (String) -> Void) {
    print("Fetching data...")
    completion("Data received!")
}
fetchData { result in
    print("result:\(result)")
}
