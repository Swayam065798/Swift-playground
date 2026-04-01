import UIKit

var greeting = "Hello, playground"

// In an array return the frequency --> Pattern used: dictionary
func getFrequency(arr: [Int]) -> [Int: Int] {
    var numDict: [Int: Int] = [:]
    
    for num in arr {
        numDict[num, default: 0] += 1
    }
    
    return numDict
}

let arr = [1, 2, 2, 3, 1, 4, 2]
let result = getFrequency(arr: arr)
print(result)
