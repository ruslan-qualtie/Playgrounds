import Foundation

func sortColors(_ nums: inout [Int]) {
    var low = 0, mid = 0, high = nums.count - 1
    while mid <= high {
        if nums[mid] == 0 {
            nums.swapAt(low, mid)
            low += 1
            mid += 1
        } else if nums[mid] == 1 {
            mid += 1
        } else {
            nums.swapAt(mid, high)
            high -= 1
        }
    }
}

var colors: [Int] = [2, 0, 2, 1, 1, 0]
sortColors(&colors)
print(colors) // [0, 0, 1, 1, 2, 2]
