// 239. Sliding Window Maximum
// https://leetcode.com/problems/sliding-window-maximum/

import Foundation

func maxSlidingWindow(_ nums: [Int], _ k: Int) -> [Int] {
    var deque = [Int](), result = [Int]()
    for i in 0..<nums.count {
        if !deque.isEmpty && deque.first! < i - k + 1 {
            deque.removeFirst()
        }
        while !deque.isEmpty && nums[deque.last!] < nums[i] {
            deque.removeLast()
        }
        deque.append(i)
        if i >= k - 1 {
            result.append(nums[deque.first!])
        }
    }
    return result
}

print(maxSlidingWindow([1, 3, -1, -3, 5, 3, 6, 7], 3)) // [3,3,5,5,6,7]
