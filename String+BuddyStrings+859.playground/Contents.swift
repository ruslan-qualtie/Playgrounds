// 859. Buddy Strings
// https://leetcode.com/problems/buddy-strings/

import Foundation

func buddyStrings(_ s: String, _ goal: String) -> Bool {
    if s.count != goal.count { return false }
    if s == goal { return s.count > Set(s).count }
    var sarr = Array(s), garr = Array(goal), diff = [Int]()
    for i in 0..<s.count {
        if sarr[i] != garr[i] {
            diff.append(i)
            if diff.count > 2 { return false }
        }
    }
    if diff.count == 1 { return false }
    return sarr[diff[0]] == garr[diff[1]] && sarr[diff[1]] == garr[diff[0]]
}

print(buddyStrings("ab", "ba")) // true
print(buddyStrings("ab", "ab")) // false
print(buddyStrings("aa", "aa")) // true
