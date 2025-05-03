// 2278. Percentage of Letter in String
// https://leetcode.com/problems/percentage-of-letter-in-string/

import Foundation

func percentageLetter(_ s: String, _ letter: Character) -> Int {
    var freq = 0
    for char in s {
        if char == letter {
            freq += 1
        }
    }
    return 100 * freq / s.count
}

print(percentageLetter("foobar", "o")) // 33
print(percentageLetter("jjjj", "k")) // 0
