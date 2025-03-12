import Foundation

func moveZeroes(_ nums: inout [Int]) {
    if nums.count < 2 { return }
    var left = 0, right = 1
    while right < nums.count {
        if nums[left] == 0 {
            if nums[right] != 0 {
                nums.swapAt(left, right)
                left += 1
            }
        } else {
            left += 1
        }
        right += 1
    }
}

var array1: [Int] = [0,1,0,3,12]
moveZeroes(&array1)
print(array1)
