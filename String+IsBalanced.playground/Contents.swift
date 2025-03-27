// 3340. Check Balanced String
// https://leetcode.com/problems/check-balanced-string/

import Foundation

func isBalanced(_ num: String) -> Bool {
    var digits = Array(num), evenSum = 0, oddSum = 0
    for i in 0..<digits.count {
        if i % 2 == 0 {
            oddSum += digits[i].wholeNumberValue!
        } else {
            evenSum += digits[i].wholeNumberValue!
        }
    }
    return evenSum == oddSum
}

print(isBalanced("1234"))  // false
print(isBalanced("24123")) // true
