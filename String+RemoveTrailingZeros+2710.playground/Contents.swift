// 2710. Remove Trailing Zeros From a String
// https://leetcode.com/problems/remove-trailing-zeros-from-a-string/

import Foundation

func removeTrailingZeros(_ num: String) -> String {
    var narr = Array(num)
    for i in (0..<narr.count).reversed() {
        if narr[i] != "0" {
            narr = Array(narr[0...i])
            break
        }
    }
    return String(narr)
}

print(removeTrailingZeros("51230100")) // "512301"
print(removeTrailingZeros("123")) // "123"
