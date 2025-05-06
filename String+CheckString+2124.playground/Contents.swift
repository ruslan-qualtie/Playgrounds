// 2124. Check if All A's Appears Before All B's
// https://leetcode.com/problems/check-if-all-as-appears-before-all-bs/

import Foundation

func checkString(_ s: String) -> Bool {
    !s.contains("ba")
}

print(checkString("aaabbb")) // true
print(checkString("abab")) // false
print(checkString("bbb")) // true
