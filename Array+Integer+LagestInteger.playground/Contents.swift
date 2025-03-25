// 3471. Find the Largest Almost Missing Integer
// https://leetcode.com/problems/find-the-largest-almost-missing-integer/

import Foundation

func largestInteger(_ nums: [Int], _ k: Int) -> Int {
    var freq = [Int: Int](), subFreq = [Int: Int]()
    for i in 0..<k {
        subFreq[nums[i], default: 0] += 1
    }
    for i in 0...(nums.count - k) {
        for (key, _) in subFreq {
            freq[key, default: 0] += 1
        }
        if i < nums.count - k {
            if let lf = subFreq[nums[i]] {
                if lf == 1 {
                    subFreq[nums[i]] = nil
                } else {
                    subFreq[nums[i]]! -= 1
                }
            }
            subFreq[nums[i + k], default: 0] += 1
        }
    }
    return freq.filter{ $0.value == 1}.keys.max() ?? -1
}

print(largestInteger([3,9,2,1,7], 3)) // 7
print(largestInteger([3,9,7,2,1,7], 4))  // 3
print(largestInteger([0,0], 1)) // -1
print(largestInteger([0,0], 2)) // 0
