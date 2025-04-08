// 455. Assign Cookies
// https://leetcode.com/problems/assign-cookies/

import Foundation

func findContentChildren(_ g: [Int], _ s: [Int]) -> Int {
    var g = g.sorted(), s = s.sorted()
    var gp = g.count - 1, sp = s.count - 1, result = 0
    while gp >= 0 && sp >= 0 {
        if s[sp] >= g[gp] {
            sp -= 1
            result += 1
        }
        gp -= 1
    }
    return result
}

print(findContentChildren([1, 2, 3], [1, 1])) // 1
print(findContentChildren([1, 2], [1, 2, 3])) // 2
