// 496. Next Greater Element I
// https://leetcode.com/problems/next-greater-element-i/

import Foundation

func nextGreaterElement(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
    var map = Array(repeating: -1, count: nums2.count), stack = [Int](), result = [Int]()
    for i in (0..<nums2.count).reversed() {
        while !stack.isEmpty && stack.last! < nums2[i] {
            stack.removeLast()
        }
        if !stack.isEmpty {
            map[i] = stack.last!
        }
        stack.append(nums2[i])
    }
    for num in nums1 {
        let index = nums2.firstIndex(of: num)!
        result.append(map[index])
    }
    return result
}

print(nextGreaterElement([4, 1, 2], [1, 3, 4, 2])) // [-1, 3, -1]
print(nextGreaterElement([2, 4], [1, 2, 3, 4])) // [3, -1]
