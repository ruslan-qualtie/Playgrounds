import Foundation

func reverseString(_ s: inout [Character]) {
    var left = 0
    var right = s.count - 1
    while(left < right) {
        s.swapAt(left, right)
        left += 1
        right -= 1
    }
}

var s: [Character] = ["h", "e", "l", "l", "o"]
reverseString(&s)
print(s)

