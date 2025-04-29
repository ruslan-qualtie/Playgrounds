// 2697. Lexicographically Smallest Palindrome
// https://leetcode.com/problems/lexicographically-smallest-palindrome/

import Foundation

func makeSmallestPalindrome(_ s: String) -> String {
    var left = 0, right = s.count - 1, sarr = Array(s)
    while left < right {
        if sarr[left] > sarr[right] {
            sarr[left] = sarr[right]
        } else if sarr[left] < sarr[right] {
            sarr[right] = sarr[left]
        }
        left += 1
        right -= 1
    }
    return String(sarr)
}

print(makeSmallestPalindrome("egcfe")) // "efcfe"
print(makeSmallestPalindrome("abcd")) // "abba"
print(makeSmallestPalindrome("seven")) // "neven"
