// 3216. Lexicographically Smallest String After a Swap
// https://leetcode.com/problems/lexicographically-smallest-string-after-a-swap/

import Foundation

func getSmallestString(_ s: String) -> String {
    var sarr = Array(s)
    for i in 0..<sarr.count - 1 {
        let fd = sarr[i].wholeNumberValue!
        let sd = sarr[i + 1].wholeNumberValue!
        if fd > sd && fd % 2 == sd % 2  {
            sarr.swapAt(i, i + 1)
            break
        }
    }
    return String(sarr)
}

print(getSmallestString("45320")) // 43520
print(getSmallestString("001")) // 001
