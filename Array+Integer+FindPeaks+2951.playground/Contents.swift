// 2951. Find the Peaks
// https://leetcode.com/problems/find-the-peaks/

import Foundation

func findPeaks(_ mountain: [Int]) -> [Int] {
    var result = [Int]()
    for i in 1..<mountain.count - 1 {
        if mountain[i - 1] < mountain[i] && mountain[i] > mountain[i + 1] {
            result.append(i)
        }
    }
    return result
}

print(findPeaks([2, 2, 4])) // []
print(findPeaks([1, 4, 3, 8, 5])) // [1, 3]
