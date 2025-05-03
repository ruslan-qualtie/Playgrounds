// 1002. Find Common Characters
// https://leetcode.com/problems/find-common-characters/

import Foundation

func commonChars(_ words: [String]) -> [String] {
    var minFreq = Array(repeating: Int.max, count: 26), result = [String]()
    for word in words {
        var freq = Array(repeating: 0, count: 26)
        for char in word {
            freq[Int(char.asciiValue! - 97)] += 1
        }
        for i in 0..<26 {
            minFreq[i] = min(minFreq[i], freq[i])
        }
    }
    for i in 0..<26 {
        let char = String(UnicodeScalar(i + 97)!)
        for i in 0..<minFreq[i] {
            result.append(char)
        }
    }
    return result
}

print(commonChars(["bella", "label", "roller"])) // ["e", "l", "l"]
print(commonChars(["cool", "lock", "cook"])) // ["c", "o"]
