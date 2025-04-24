// 2000. Reverse Prefix of Word
// https://leetcode.com/problems/reverse-prefix-of-word/


import Foundation

func reversePrefix(_ word: String, _ ch: Character) -> String {
    if !word.contains(ch) { return word }
    var result = [Character](), reverse = true
    for char in word {
        if reverse {
            result = [char] + result
            if char == ch {
                reverse = false
            }
        } else {
            result.append(char)
        }
    }
    return String(result)
}

print(reversePrefix("abcdefd", "d")) // "dcbaefd"
print(reversePrefix("xyxzxe", "z")) // "zxyxxe"
print(reversePrefix("abcd", "z")) // "abcd"
