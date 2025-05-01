// 2696. Minimum String Length After Removing Substrings
// https://leetcode.com/problems/minimum-string-length-after-removing-substrings/

import Foundation

func minLength(_ s: String) -> Int {
    var stack = [Character]()
    for char in s {
        if let prev = stack.last {
            if (char == "B" && prev == "A") || (char == "D" && prev == "C") {
                stack.removeLast()
                continue
            }
        }
        stack.append(char)
    }
    return stack.count
}

print(minLength("ABFCACDB")) // 2
print(minLength("ACBBD")) // 5
