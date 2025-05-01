// 1370. Increasing Decreasing String
// https://leetcode.com/problems/increasing-decreasing-string/

import Foundation

func sortString(_ s: String) -> String {
    var chars = Array(repeating: 0, count: 26), result = [Character]()
    for char in s {
        chars[index(char)] += 1
    }
    while result.count < s.count {
        for i in 0...25 {
            if chars[i] > 0 {
                result.append(char(i))
                chars[i] -= 1
            }
        }
        for i in (0...25).reversed() {
            if chars[i] > 0 {
                result.append(char(i))
                chars[i] -= 1
            }
        }
    }
    return String(result)
}
private func index(_ c: Character) -> Int {
    Int(c.asciiValue! - 97)
}
private func char(_ i: Int) -> Character {
    Character(UnicodeScalar(i + 97)!)
}

print(sortString("aaaabbbbcccc")) // "abccbaabccba"
print(sortString("rat")) // "art"
