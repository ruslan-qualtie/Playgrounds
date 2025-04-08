import UIKit

func longestPalindrome(_ s: String) -> Int {
    var freq = [Character: Int](), result = 0, hasOdd = false
    for char in s {
        freq[char, default: 0] += 1
    }
    for value in freq.values {
        if value % 1 << 1 == 0 {
            result += value
        } else {
            if hasOdd {
                result += value - 1
            } else {
                result += value
                hasOdd = true
            }
        }
    }
    return result
}

print(longestPalindrome("abccccdd")) // 7
print(longestPalindrome("abccccdeeed")) // 9
print(longestPalindrome("a")) // 1
