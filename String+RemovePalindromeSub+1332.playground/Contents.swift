// 1332. Remove Palindromic Subsequences
// https://leetcode.com/problems/remove-palindromic-subsequences/

import Foundation

func removePalindromeSub(_ s: String) -> Int {
    isPalindrome(s) ? 1 : 2
}
private func isPalindrome(_ s: String) -> Bool {
    var sarr = Array(s), left = 0, right = sarr.count - 1
    while left < right {
        if sarr[left] != sarr[right] {
            return false
        }
        left += 1
        right -= 1
    }
    return true
}

print(removePalindromeSub("ababa")) // 1
print(removePalindromeSub("abb")) // 2
print(removePalindromeSub("baabb")) // 2
 
