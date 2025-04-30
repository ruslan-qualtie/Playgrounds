// 1941. Check if All Characters Have Equal Number of Occurrences
// https://leetcode.com/problems/check-if-all-characters-have-equal-number-of-occurrences/

import Foundation

func areOccurrencesEqual(_ s: String) -> Bool {
    var freq = [Character: Int]()
    for char in s {
        freq[char, default: 0] += 1
    }
    let values = Array(freq.values)
    if values.count == 1 { return true }
    for i in 1..<values.count {
        if values[i - 1] != values[i] {
            return false
        }
    }
    return true
}

print(areOccurrencesEqual("abacbc")) // true
print(areOccurrencesEqual("aaabb")) // false
