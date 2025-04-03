// 3131. Find the Integer Added to Array I
// https://leetcode.com/problems/find-the-integer-added-to-array-i/

import Foundation

func addedInteger(_ nums1: [Int], _ nums2: [Int]) -> Int {
    var nums1 = nums1.sorted(), nums2 = nums2.sorted()
    return nums2[0] - nums1[0]
}

print(addedInteger([2, 6, 4], [9, 7, 5])) // 3
print(addedInteger([10], [5])) // -5
print(addedInteger([1, 1, 1, 1], [1, 1, 1, 1])) // 0
