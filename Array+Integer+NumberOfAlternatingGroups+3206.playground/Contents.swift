// 3206. Alternating Groups I
// https://leetcode.com/problems/alternating-groups-i/

import Foundation

func numberOfAlternatingGroups(_ colors: [Int]) -> Int {
    let n = colors.count
    var count = 0
    for i in 0..<n {
        let pi = i == 0 ? n - 1 : i - 1
        let ni = i == n - 1 ? 0 : i + 1
        if colors[pi] != colors[i] && colors[i] != colors[ni] {
            count += 1
        }
    }
    return count
}

print(numberOfAlternatingGroups([1, 1, 1])) // 0
print(numberOfAlternatingGroups([0, 1, 0, 0, 1])) // 3
