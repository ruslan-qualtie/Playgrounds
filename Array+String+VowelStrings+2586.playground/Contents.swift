// 2586. Count the Number of Vowel Strings in Range
// https://leetcode.com/problems/count-the-number-of-vowel-strings-in-range/

import Foundation

func vowelStrings(_ words: [String], _ left: Int, _ right: Int) -> Int {
    var vowel = "aeiou".map { String($0) }, count = 0
    for i in left...right {
        if words[i].count == 0 {
            continue
        } else if words[i].count == 1 {
            if vowel.contains(words[i]) {
                count += 1
            }
            continue
        }
        if vowel.contains(String(words[i].first!)) && vowel.contains(String(words[i].last!)) {
            count += 1
        }
    }
    return count
}

print(vowelStrings(["are", "amy", "u"], 0, 2)) // 2
print(vowelStrings(["hey", "aeo", "mu", "ooo", "artro"], 1, 4)) // 3
