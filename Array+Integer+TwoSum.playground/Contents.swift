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

func twoSum2(_ nums: [Int], _ target: Int) -> [Int] {
    var map = [Int: Int](), result = [Int]()
    for (i, n) in nums.enumerated() {
        let c = target - n
        if let index = map[c] {
            result = [i, index]
            break
        }
        map[n] = i
    }
    return result
}

func twoSum3(_ nums: [Int], _ target: Int) -> [Int] {
    var sorted = nums.sorted(), left = 0, right = nums.count - 1, result = [Int]()
    while left < right {
        let sum = sorted[left] + sorted[right]
        if sum > target {
            right -= 1
        } else if sum < target {
            left += 1
        } else {
            result = [nums.firstIndex(of: sorted[left])!, nums.lastIndex(of: sorted[right])!]
            break
        }
    }
    return result
}

print(twoSum([2, 7, 11, 15], 9))  // ➝ [1, 2]
print(twoSum2([2, 7, 11, 15], 9)) // ➝ [1, 2]
print(twoSum2([2, 7, 11, 15], 9)) // ➝ [0, 1]
print(twoSum2([3, 2, 4], 6))      // ➝ [1, 2]
print(twoSum2([3, 3], 6))         // ➝ [0, 1]
print(twoSum2([1, 2, 3, 4], 8))   // ➝ []
print(twoSum3([2, 7, 11, 15], 9)) // ➝ [1, 2]
