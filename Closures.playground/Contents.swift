import UIKit

var greeting = "Hello, playground"

class TestClosure {
    func performAddition() {
        print("First") // 1st
        add(2, num2: 3, completionHandler: {
            result in
            print(result) // 4th
        })
        print("Final step") // 5th
    }
    
    func add(_ num1: Int, num2: Int, completionHandler: (_ result: Int) -> Void) {
        print("Step 2") // 2nd
        let sum = num1 + num2
        print("step 3") // 3rd
        completionHandler(sum)
    }
    
    
}

// closures are self-contained blocks of functionality that can be passed around and used in your code

// non-parametrized closure
var message = {
    print("Inside message closure")
}

message()

// parametrized closure
var sayGoodMorning = { (name: String) in
    print("Good morning:\(name)")
    
}
sayGoodMorning("Swayam")

// closures with return statement
var sumofTwoNos = { (num1: Int, num2: Int) in
    return num1 + num2
}

print(sumofTwoNos(2,4))

// closures as function parameter
func sayNoo(great: () -> ()) {
    
}

// Returning a closure from a function
func add() -> () -> Int {
    
    var count = 0
    
    let counter = {
        count += 1
        return count
    }
    return counter
}

// trailing closures
sayNoo {
    
}

var name = "Swayam"
let closure = { [name] in  // Concept --> when we dont write in it would print "I am an iOS developer" because the capture list of the closure creates the copy of name when the variable is initialized for 1st time
    print("I love \(name)")
}
name = "I am an iOS developer"
closure()

func get(name: String, completion: () -> ()) {
    print("Hello: \(name)")
}

get(name: "Swayam") {
    print("Welcome!")
}

//func execute() -> (Int) -> Int {
//    
//}
