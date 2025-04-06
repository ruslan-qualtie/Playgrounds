// 3083. Existence of a Substring in a String and Its Reverse
// https://leetcode.com/problems/existence-of-a-substring-in-a-string-and-its-reverse/

import Foundation

func isSubstringPresent(_ s: String) -> Bool {
  let r = s.reversed()
  var sarr = Array(s)
  for i in 0..<sarr.count - 1 {
    if r.contains(String(sarr[i]) + String(sarr[i + 1])) {
        return true
    }
  }
  return false
}

print(isSubstringPresent("leetcode")) // true
print(isSubstringPresent("abcba")) // true
print(isSubstringPresent("abcd")) // false
