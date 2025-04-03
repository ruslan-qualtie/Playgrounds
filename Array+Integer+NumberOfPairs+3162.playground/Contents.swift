// 3162. Find the Number of Good Pairs I
// https://leetcode.com/problems/find-the-number-of-good-pairs-i/

import Foundation

func numberOfPairs(_ nums1: [Int], _ nums2: [Int], _ k: Int) -> Int {
    var count = 0
    for i in nums1 {
        for j in nums2 {
            if i % (j * k) == 0 {
                count += 1
            }
        }
    }
    return count
}

print(numberOfPairs([1, 3, 4], [1, 3, 4], 1)) // 5
print(numberOfPairs([1, 2, 4, 12], [2, 4], 3)) // 2
