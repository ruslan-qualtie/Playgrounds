// 2351. First Letter to Appear Twice
// https://leetcode.com/problems/first-letter-to-appear-twice/

import Foundation

func repeatedCharacter(_ s: String) -> Character {
    var freq = [Character: Int](), result: Character = " "
    for char in s {
        freq[char, default: 0] += 1
        if freq[char]! == 2 {
            result = char
            break
        }
    }
    return result
}

print(repeatedCharacter("abccbaacz")) // "c"
print(repeatedCharacter("abcdd")) // "d"
