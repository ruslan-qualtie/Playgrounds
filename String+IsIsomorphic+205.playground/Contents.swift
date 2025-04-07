// 205. Isomorphic Strings
// https://leetcode.com/problems/isomorphic-strings/

import Foundation

func isIsomorphic(_ s: String, _ t: String) -> Bool {
    var sarr = Array(s), tarr = Array(t), map = [Character: Character]()
    for i in 0..<sarr.count {
        if let char = map[sarr[i]] {
            if char != tarr[i] {
                return false
            }
        } else {
            map[sarr[i]] = tarr[i]
        }
    }
    return Set(map.values).count == map.values.count
}

print(isIsomorphic("egg", "add")) // true
print(isIsomorphic("foo", "bar")) // false
print(isIsomorphic("paper", "title")) // true
print(isIsomorphic("badc", "baba")) // false
