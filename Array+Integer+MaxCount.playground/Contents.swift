import Foundation

func maximumCount(_ nums: [Int]) -> Int {
    var neg = 0, pos = nums.count - 1
    if nums[neg] > 0 || nums[pos] < 0 { return nums.count }
    while nums[neg] < 0 { neg += 1 }
    while nums[pos] > 0 { pos -= 1 }
    return max(neg, nums.count - pos - 1)
}

print(maximumCount([-2, -1, 0, 1, 2])) // 2
print(maximumCount([-2, -1, 0, 1])) // 2
print(maximumCount([1, 2, 3])) // 3
