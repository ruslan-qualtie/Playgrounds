// 2032. Two Out of Three
// https://leetcode.com/problems/two-out-of-three/

import Foundation

func twoOutOfThree(_ nums1: [Int], _ nums2: [Int], _ nums3: [Int]) -> [Int] {
    let s1 = Set(nums1), s2 = Set(nums2), s3 = Set(nums3)
    return Array(Set(Array(s1.intersection(s2)) + Array(s1.intersection(s3)) + Array(s2.intersection(s3))))
}

print(twoOutOfThree([1, 1, 3, 2], [2, 3], [3])) // [3, 2]
print(twoOutOfThree([3, 1], [2, 3], [1, 2])) // [2, 3, 1]
print(twoOutOfThree([1, 2, 2], [4, 3, 3], [5])) // []
