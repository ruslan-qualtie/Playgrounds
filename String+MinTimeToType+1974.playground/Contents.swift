// 1974. Minimum Time to Type Word Using Special Typewriter
// https://leetcode.com/problems/minimum-time-to-type-word-using-special-typewriter/

import Foundation

func minTimeToType(_ word: String) -> Int {
    var prev = 0, time = 0
    for char in word {
        let i = Int(char.asciiValue! - 97)
        let diff = abs(i - prev)
        time += min(26 - diff, diff) + 1
        prev = i
    }
    return time
}

print(minTimeToType("abc")) // 5
print(minTimeToType("bza")) // 7
print(minTimeToType("zjpc")) // 34
