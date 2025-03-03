import Foundation

func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
    var left = 0, right = numbers.count - 1
    while left < right {
        let sum = numbers[left] + numbers[right]
        if sum > target {
            right -= 1
        } else if sum < target {
            left += 1
        } else {
            break
        }
    }
    return [left + 1, right + 1]
}

print(twoSum([2, 7, 11, 15], 9))
