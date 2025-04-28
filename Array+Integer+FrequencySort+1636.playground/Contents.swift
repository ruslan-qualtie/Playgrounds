import Foundation

func frequencySort(_ nums: [Int]) -> [Int] {
    var nums = nums, freq = [Int: Int]()
    for num in nums {
        freq[num, default: 0] += 1
    }
    nums.sort {
        let fi1 = freq[$0]!
        let fi2 = freq[$1]!
        if fi1 < fi2 {
            return true
        } else if fi1 == fi2 {
            if $1 < $0 {
                return true
            }
        }
        return false
    }
    return nums
}

print(frequencySort([1, 1, 2, 2, 2, 3])) // [3, 1, 1, 2, 2, 2]
print(frequencySort([2, 3, 1, 3, 2])) // [1, 3, 3, 2, 2]
print(frequencySort([-1, 1, -6, 4, 5, -6, 1, 4, 1])) // [5, -1, 4, 4, -6, -6, 1, 1, 1]
