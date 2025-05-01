// 1460. Make Two Arrays Equal by Reversing Subarrays
// https://leetcode.com/problems/make-two-arrays-equal-by-reversing-subarrays/

import Foundation

func canBeEqual(_ target: [Int], _ arr: [Int]) -> Bool {
    var map = [Int: Int]()
    for i in 0..<arr.count {
        map[target[i], default: 0] += 1
        map[arr[i], default: 0] -= 1
    }
    return map.values.allSatisfy { $0 == 0 }
}

print(canBeEqual([1, 2, 3, 4], [2, 4, 1, 3])) // true
print(canBeEqual([7], [7])) // true
print(canBeEqual([3, 7, 9], [3, 7, 11])) // false
