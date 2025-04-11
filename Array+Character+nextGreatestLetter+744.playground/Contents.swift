// 744. Find Smallest Letter Greater Than Target
// https://leetcode.com/problems/find-smallest-letter-greater-than-target/

import Foundation

func nextGreatestLetter(_ letters: [Character], _ target: Character) -> Character {
    for letter in letters {
        if letter > target {
            return letter
        }
    }
    return letters[0]
}

print(nextGreatestLetter(["c", "f", "j"], "a")) // "c"
print(nextGreatestLetter(["c", "f", "j"], "c")) // "f"
print(nextGreatestLetter(["x", "x", "y", "y"], "z")) // "x"
