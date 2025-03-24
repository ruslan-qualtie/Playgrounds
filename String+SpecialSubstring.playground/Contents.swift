// 3456. Find Special Substring of Length K
// https://leetcode.com/problems/find-special-substring-of-length-k/

import Foundation

func hasSpecialSubstring(_ s: String, _ k: Int) -> Bool {
    var sArr = Array(s)
    let n = sArr.count
    for i in 0...(n - k) {
        let subString = Array(sArr[i..<(i + k)])
        if Set(subString).count != 1 { continue }
        let char = subString[0]
        if i > 0 && sArr[i - 1] == char { continue }
        if i + k < n && sArr[i + k] == char { continue }
        return true
    }
    return false
}

print(hasSpecialSubstring("abcabc", 3))  // false
print(hasSpecialSubstring("aabbcc", 3))  // false
print(hasSpecialSubstring("aaaabaaa", 3))  // true
