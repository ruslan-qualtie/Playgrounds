// 2956. Find Common Elements Between Two Arrays
// https://leetcode.com/problems/find-common-elements-between-two-arrays/

import Foundation

func findIntersectionValues(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
    var a1 = 0, a2 = 0
    for num in nums1 {
        if nums2.contains(num) {
            a1 += 1
        }
    }
    for num in nums2 {
        if nums1.contains(num) {
            a2 += 1
        }
    }
    return [a1, a2]
}

print(findIntersectionValues([2, 3, 2], [1, 2])) // [2, 1]
print(findIntersectionValues([4, 3, 2, 3, 1], [2, 2, 5, 2, 3, 6])) // [3, 4]
