import Foundation

func moveZeros(_ nums: inout [Int]) {
    var left = 0
    
    for right in 0..<nums.count {
        if nums[right] != 0 {
            if left != right {
                print("swap", left, right)
                nums.swapAt(left, right)
            }
            left += 1
        }
        print(nums, left, right)
    }
}
var nums = [1, 1, 1, 1, 0, 1, 0, 3, 12]
moveZeros(&nums)
print(nums)

func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
    var left = 0

    for right in 0..<nums.count {
        if nums[right] != val {
            nums[left] = nums[right]
            left += 1
        }
    }
    return left  // `left` - новая длина массива
}

