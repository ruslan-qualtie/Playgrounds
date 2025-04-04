import UIKit

func resultArray(_ nums: [Int]) -> [Int] {
    var arr1 = [nums[0]], arr2 = [nums[1]]
    for i in 2..<nums.count {
        if arr1.last! > arr2.last! {
            arr1.append(nums[i])
        } else {
            arr2.append(nums[i])
        }
    }
    return arr1 + arr2
}

print(resultArray([2, 1, 3])) // [2, 3, 1]
print(resultArray([5, 4, 3, 8])) // [5, 3, 4, 8]
