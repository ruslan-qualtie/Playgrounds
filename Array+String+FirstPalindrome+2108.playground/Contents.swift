// 2108. Find First Palindromic String in the Array
// https://leetcode.com/problems/find-first-palindromic-string-in-the-array/


import Foundation

func firstPalindrome(_ words: [String]) -> String {
    for word in words {
        if isPalindrome(word) {
            return word
        }
    }
    return ""
}
private func isPalindrome(_ s: String) -> Bool {
    var sarr = Array(s), left = 0, right = sarr.count - 1
    while left < right {
        if sarr[left] == sarr[right] {
            left += 1
            right -= 1
        } else {
            return false
        }
    }
    return true
}

print(firstPalindrome(["abc","car","ada","racecar","cool"])) // "ada"
print(firstPalindrome(["notapalindrome","racecar"])) // "racecar"
print(firstPalindrome(["def","ghi"])) // ""
