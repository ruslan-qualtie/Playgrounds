// 2716. Minimize String Length
// https://leetcode.com/problems/minimize-string-length/

import Foundation

func minimizedStringLength(_ s: String) -> Int {
    var freq = [Character: Int](), count = s.count
    for char in s {
        freq[char, default: 0] += 1
        if freq[char]! > 1 {
            count -= 1
        }
    }
    return count
}

print(minimizedStringLength("aaabc")) // 3
print(minimizedStringLength("cbbd")) // 3
print(minimizedStringLength("baadccab")) // 4
