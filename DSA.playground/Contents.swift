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

// MARK: first non-repeating characters returning the character alonwith the count
class Solution {
    var count = 0
    func firstNonRepeatingCharacter(_ s: String) -> (Character, Int) {
        // Step 1: Count frequency of each character
        var frequency: [Character: Int] = [:]
        
        
        for char in s {
            frequency[char, default: 0] += 1
        }
        
        // Step 2: Find first char with count == 1
        for char in s {
            if frequency[char] == 1 {
                count += 1
                return (char, count)
            }
        }
        
        // Step 3: No unique character found
        return ("_", count)
    }
}

let sol = Solution()
print(sol.firstNonRepeatingCharacter("aabbcd"))  // "c"
print(sol.count)
let bal = Solution()
print(bal.firstNonRepeatingCharacter("aabb"))    // "_"
print(bal.count)
//print(sol.firstNonRepeatingCharacter("swift"))   // "w" wait no "s"
