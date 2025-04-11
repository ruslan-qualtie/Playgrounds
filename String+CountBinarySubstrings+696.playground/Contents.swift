// 696. Count Binary Substrings
// https://leetcode.com/problems/count-binary-substrings/

import Foundation

func countBinarySubstrings(_ s: String) -> Int {
    var sarr = Array(s), groups = [Int](), count = 1
    for i in 1..<sarr.count {
        if sarr[i] == sarr[i - 1] {
            count += 1
        } else {
            groups.append(count)
            count = 1
        }
    }
    groups.append(count)
    if groups.count < 2 { return 0 }
    count = 0
    for i in 1..<groups.count {
        count += min(groups[i], groups[i - 1])
    }
    return count
}

print(countBinarySubstrings("00110011")) // 6
print(countBinarySubstrings("10101")) // 4
