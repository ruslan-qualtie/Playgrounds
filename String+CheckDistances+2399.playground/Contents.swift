// 2399. Check Distances Between Same Letters
// https://leetcode.com/problems/check-distances-between-same-letters/

import Foundation

func checkDistances(_ s: String, _ distance: [Int]) -> Bool {
    var sarr = Array(s), occur = Array(repeating: -1, count: 26)
    for i in 0..<sarr.count {
        let index = Int(sarr[i].asciiValue! - 97)
        if occur[index] == -1  {
            occur[index] = i
        } else {
            let dist = i - occur[index] - 1
            if dist != distance[index] {
                return false
            }
        }
    }
    return true
}

print(checkDistances("abaccb", [1,3,0,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0])) // true
print(checkDistances("aa", [1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0])) // false
