import Foundation

func findLengthOfLCIS(_ nums: [Int]) -> Int {
    var long = 1, left = 0, right = 1
    while right < nums.count {
        if nums[right] <= nums[right - 1] {
            left = right
        }
        long = max(long, right - left + 1)
        right += 1
    }
    return long
}

print(findLengthOfLCIS([1, 3, 5, 4, 7])) // 3
print(findLengthOfLCIS([2, 2, 2, 2, 2])) // 1
