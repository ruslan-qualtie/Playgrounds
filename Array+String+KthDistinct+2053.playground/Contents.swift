// 2053. Kth Distinct String in an Array
// https://leetcode.com/problems/kth-distinct-string-in-an-array/

import Foundation

func kthDistinct(_ arr: [String], _ k: Int) -> String {
    var freq = [String: Int](), count = 0
    for item in arr {
        freq[item, default: 0] += 1
    }
    for item in arr {
        if freq[item]! == 1 {
            count += 1
            if count == k {
                return item
            }
        }
    }
    return ""
}

print(kthDistinct(["d","b","c","b","c","a"], 2)) // "a"
print(kthDistinct(["aaa","aa","a"], 1)) // "aaa"
print(kthDistinct(["a","b","a"], 3)) // ""
