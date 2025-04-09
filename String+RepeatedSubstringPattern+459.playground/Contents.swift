// 459. Repeated Substring Pattern
// https://leetcode.com/problems/repeated-substring-pattern/

import Foundation

func repeatedSubstringPattern(_ s: String) -> Bool {
    if s.count == 1 { return false }
    for i in 1...s.count / 2 where s.count % i == 0 {
        if s == String(repeating: String(s.prefix(i)), count: s.count / i) {
            return true
        }
    }
    return false
}

print(repeatedSubstringPattern("abab")) // true
print(repeatedSubstringPattern("aba")) // false
print(repeatedSubstringPattern("abcabcabcabc")) // true
print(repeatedSubstringPattern("a")) // false
