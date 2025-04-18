// 922. Sort Array By Parity II
// https://leetcode.com/problems/sort-array-by-parity-ii/

import Foundation

func sortArrayByParityII(_ nums: [Int]) -> [Int] {
    var nums = nums
    for i in 0..<nums.count {
        if i % 2 != nums[i] % 2 {
            var j = i + 1
            while j % 2 == nums[j] % 2 || nums[i] % 2 == nums[j] % 2 {
                j += 1
            }
            nums.swapAt(i, j)
        }
    }
    return nums
}

print(sortArrayByParityII([4, 2, 5, 7])) // [4, 5, 2, 7]
print(sortArrayByParityII([2, 3])) // [2, 3]
