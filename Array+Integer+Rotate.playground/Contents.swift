import Foundation

func rotate(_ nums: inout [Int], _ k: Int) {
    for _ in 0..<k {
        nums = [nums.last!] + nums.dropLast()
    }
}

func rotate2(_ nums: inout [Int], _ k: Int) {
    let k = k % nums.count
    nums.reverse()
    nums[..<k].reverse()
    nums[k...].reverse()
}

var nums = [1, 2, 3, 4, 5, 6, 7]
rotate(&nums, 3)
print(nums)

var nums2 = [1, 2, 3, 4, 5, 6, 7]
rotate2(&nums2, 3)
print(nums2)
