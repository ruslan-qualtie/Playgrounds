// 3407. Substring Matching Pattern
// https://leetcode.com/problems/substring-matching-pattern/
import Foundation

func hasMatch(_ s: String, _ p: String) -> Bool {
    let parts = p.split(separator: "*")
    if parts.isEmpty { return true }
    if parts.count == 1 { return s.contains(parts[0]) }
    if let prefixRange = s.range(of: parts[0]) {
        return s[prefixRange.upperBound...].contains(parts[1])
    }
    return false
}

print(hasMatch("leetcode", "ee*e")) // true
print(hasMatch("car", "c*v")) // false
print(hasMatch("luck", "u*")) // true
