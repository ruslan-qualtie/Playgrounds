import Foundation

func isPalindrome(_ x: Int) -> Bool {
    if x < 0 || (x % 10 == 0 && x != 0) { return false }
    var x = x, reversed = 0
    while x > reversed {
        reversed = reversed * 10 + x % 10
        x /= 10
    }
    return x == reversed || x == reversed / 10
}

print(isPalindrome(121))
print(isPalindrome(0))
print(isPalindrome(1))
print(isPalindrome(1221))
print(isPalindrome(12321))
print("--------------------")
print(isPalindrome(123456))
print(isPalindrome(-121))
print(isPalindrome(10))
