// 3438. Find Valid Pair of Adjacent Digits in String
// https://leetcode.com/problems/find-valid-pair-of-adjacent-digits-in-string/

import Foundation

func findValidPair(_ s: String) -> String {
    var sArr = Array(s), freq = [Character: Int]()
    for char in sArr {
        freq[char, default: 0] += 1
    }
    freq = freq.filter { $0.key.wholeNumberValue! == $0.value }
    if freq.count < 2 { return "" }
    for i in 0..<sArr.count - 1 {
        if freq[sArr[i]] != nil && freq[sArr[i + 1]] != nil && freq[sArr[i]] != freq[sArr[i + 1]]{
            return "\(sArr[i])\(sArr[i + 1])"
        }
    }
    return ""
}

print(findValidPair("2523533")) // 23
print(findValidPair("221")) // 21
print(findValidPair("22")) // ""
