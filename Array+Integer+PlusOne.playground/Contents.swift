import Foundation

func plusOne(_ digits: [Int]) -> [Int] {
    var digits = digits
    for i in (0..<digits.count).reversed() {
        if digits[i] == 9 {
            digits[i] = 0
        } else {
            digits[i] += 1
            return digits
        }
    }
    return [1] + digits
}

func plusOne2(_ digits: [Int]) -> [Int] {
    var digits = digits, pointer = digits.count - 1, carry = 1
    while pointer >= 0 && carry > 0 {
        let sum = digits[pointer] + carry
        digits[pointer] = sum % 10
        carry = sum / 10
        pointer -= 1
    }
    return carry == 0 ? digits : [1] + digits
}

print(plusOne([9, 9, 0])) // [9, 9, 1]
print(plusOne([9, 9, 9])) // [1, 0, 0 , 0]

print(plusOne2([9, 9, 0])) // [9, 9, 1]
print(plusOne2([9, 9, 9])) // [1, 0, 0 , 0]
