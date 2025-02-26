import Foundation

private func validPalindrome(_ s: String) -> Bool {
    var sArr = Array(s)
    var left = 0
    var right = sArr.count - 1
    while left < right {
        if sArr[left] != sArr[right] {
            return isPalindrome(sArr, left + 1, right) || isPalindrome(sArr, left, right - 1)
        }
        left += 1
        right -= 1
    }
    return true
}
private func isPalindrome(_ s: Array<Character>, _ left: Int, _ right: Int) -> Bool {
    var left = left, right = right
    while left < right {
        if s[left] != s[right] { return false }
        left += 1
        right -= 1
    }
    return true
}

print(isPalindrome(Array(""), 0, 0))
print(isPalindrome(Array("aba"), 0, 2))
print(isPalindrome(Array("abac"), 0, 2))
print(isPalindrome(Array("abac"), 0, 3))

print(validPalindrome("abca"))
print(validPalindrome("abc"))
print(validPalindrome("abba"))
