// 1313. Decompress Run-Length Encoded List
// https://leetcode.com/problems/decompress-run-length-encoded-list/

import Foundation

func decompressRLElist(_ nums: [Int]) -> [Int] {
    let n = nums.count / 2
    var result = [Int]()
    for i in 0..<n {
        result += Array(repeating: nums[2 * i + 1], count: nums[2 * i])
    }
    return result
}

print(decompressRLElist([1, 2, 3, 4])) // [2, 4, 4, 4]
print(decompressRLElist([1, 1, 2, 3])) // [1, 3, 3]
