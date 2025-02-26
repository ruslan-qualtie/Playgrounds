import Foundation

func reverse(_ x: Int) -> Int {
    var reversed = 0
    var x = x
    while x != 0 {
        let digit = x % 10
        x /= 10
        if abs(x) <= 10 {
            if (reversed > 0 && reversed > (Int32.max - Int32(digit)) / 10)
            || (reversed < 0 && reversed < (Int32.min - Int32(digit)) / 10) {
                return 0
            }
        }
        reversed = reversed * 10 + digit
    }
    return reversed
}

print(Int32.max)
print(Int32.min)

print(reverse(8463847412))
print(reverse(7463847412))
print(reverse(-8463847412))
print(reverse(-9463847412))


