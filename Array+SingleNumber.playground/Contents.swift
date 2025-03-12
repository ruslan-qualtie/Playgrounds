import Foundation

func singleNumber(_ nums: [Int]) -> Int {
    var result = 0
    for num in nums {
        result ^= num
        print("result:", result)
    }
    return result
}

print(singleNumber([2, 4, 2, 1, 4]))
