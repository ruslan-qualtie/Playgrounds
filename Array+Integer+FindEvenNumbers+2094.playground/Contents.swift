// 2094. Finding 3-Digit Even Numbers
// https://leetcode.com/problems/finding-3-digit-even-numbers/

import Foundation

func findEvenNumbers(_ digits: [Int]) -> [Int] {
    var dm = [Int: Int](), result = [Int]()
    for digit in digits {
        dm[digit, default: 0] += 1
    }
    for i in 100...998 where i % 2 == 0 {
        var im = [Int: Int](), num = i
        while num > 0 {
            let digit = num % 10
            im[digit, default: 0] += 1
            num /= 10
        }
        var saitsfy = true
        for (k, v) in im {
            if dm[k] == nil || dm[k]! < v {
                saitsfy = false
            }
        }
        if saitsfy {
            result.append(i)
        }
    }
    return result
}

print(findEvenNumbers([2,1,3,0])) // [102,120,130,132,210,230,302,310,312,320]
print(findEvenNumbers([2,2,8,8,2])) // [222,228,282,288,822,828,882]
print(findEvenNumbers([3,7,5])) // []
