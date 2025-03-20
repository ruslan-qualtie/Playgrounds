// 128. Longest Consecutive Sequence
// https://leetcode.com/problems/longest-consecutive-sequence/

import Foundation

func longestConsecutive(_ nums: [Int]) -> Int {
    let numsSet = Set(nums)
    var maxLongest = 0
    for num in numsSet {
        if !numsSet.contains(num - 1) {
            var currentNum = num
            var currentLenght = 1
            while numsSet.contains(currentNum + 1) {
                currentNum += 1
                currentLenght += 1
            }
            maxLongest = max(maxLongest, currentLenght)
        }
    }
    return maxLongest
}

print(longestConsecutive([100, 4, 200, 1, 3, 2])) // 4
print(longestConsecutive([0])) // 1
