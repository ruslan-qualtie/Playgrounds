import Foundation

func rotate(_ nums: inout [Int], _ k: Int) {
    for _ in 0..<k {
        nums = [nums.last!] + nums.dropLast()
    }
}

var nums = [1, 2, 3, 4, 5, 6, 7]
rotate(&nums, 3)
print(nums)
