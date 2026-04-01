import UIKit

var greeting = "Hello, playground"
let value = 5

switch value {
case 1:
    print("One")
    fallthrough
case 100:
    print("Hundred")
default:
    print("Default")
}
