import Foundation

func reverseStr(_ s: String, _ k: Int) -> String {
    var sArr = Array(s)
    
    for start in stride(from: 0, to: sArr.count, by: 2 * k) {
        var left = start
        var right = min(sArr.count - 1, start + k - 1)
        while(left < right) {
            sArr.swapAt(left, right)
            left += 1
            right -= 1
        }
    }
    return String(sArr)
}

print(reverseStr("abcdefg", 2))
