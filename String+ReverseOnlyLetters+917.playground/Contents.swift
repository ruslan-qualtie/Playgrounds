import Foundation

func reverseOnlyLetters(_ s: String) -> String {
    var sarr = Array(s), left = 0, right = sarr.count - 1
    while left < right {
        while !sarr[left].isLetter && left < right {
            left += 1
        }
        while !sarr[right].isLetter && left < right {
            right -= 1
        }
        sarr.swapAt(left, right)
        left += 1
        right -= 1
    }
    return String(sarr)
}

print(reverseOnlyLetters("ab-cd")) // "dc-ba"
print(reverseOnlyLetters("a-bC-dEf-ghIj")) // "j-Ih-gfE-dCba"
print(reverseOnlyLetters("Test1ng-Leet=code-Q!")) // "Qedo1ct-eeLg=ntse-T!"
