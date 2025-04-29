// 1704. Determine if String Halves Are Alike
// https://leetcode.com/problems/determine-if-string-halves-are-alike/

import Foundation

func halvesAreAlike(_ s: String) -> Bool {
    let vowels = "aeoiuAEOIU".map { $0 }, n = s.count / 2
    var count = 0, lhc = 0, rhc = 0
    for char in s {
        count += 1
        if vowels.contains(char) {
            if count <= n {
                lhc += 1
            } else {
                rhc += 1
            }
        }
    }
    return lhc == rhc
}

print(halvesAreAlike("book")) // true
print(halvesAreAlike("textbook")) // false
