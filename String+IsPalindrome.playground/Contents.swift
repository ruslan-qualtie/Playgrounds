import Foundation

var greeting = "Hello, playground"

private func isPalindrome(_ s: String) -> Bool {
    var left = s.startIndex
    var right = s.index(before: s.endIndex)
    while left < right {
        while left < right && !s[left].isLetter && !s[left].isNumber {
            left = s.index(after: left)
        }
        while left < right && !s[right].isLetter && !s[right].isNumber {
            right = s.index(before: right)
        }
        if left >= right { break }
        if s[left].lowercased() != s[right].lowercased() { return false }
        left = s.index(after: left)
        right = s.index(before: right)
    }
    return true
}

private func isPalindrome2(_ s: String) -> Bool {
    let filtered = s.filter { $0.isLetter || $0.isNumber }.lowercased()
    return filtered == String(filtered.reversed())
}

print(isPalindrome("a."))
print(isPalindrome2("a."))
