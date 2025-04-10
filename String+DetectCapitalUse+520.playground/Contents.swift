// 520. Detect Capital
// https://leetcode.com/problems/detect-capital/

import Foundation

func detectCapitalUse(_ word: String) -> Bool {
    var cap = 0
    for char in word {
        if char.isUppercase {
            cap += 1
        }
    }
    return cap == 0 || cap == word.count || (cap == 1 && word.first!.isUppercase)
}

print(detectCapitalUse("USA")) // true
print(detectCapitalUse("FlaG")) // false

