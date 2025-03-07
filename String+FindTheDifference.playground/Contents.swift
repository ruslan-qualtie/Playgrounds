import Foundation

func findTheDifference(_ s: String, _ t: String) -> Character {
    var freq = [Character: Int](), result: Character = " "
    for char in s {
        freq[char, default: 0] += 1
    }
    for char in t {
        if let value = freq[char] {
            if value == 1 {
                freq[char] = nil
            } else {
                freq[char] = value - 1
            }
        } else {
            result = char
            break
        }
    }
    return result
}

print(findTheDifference("abcd", "abcde")) // e
print(findTheDifference("a", "aa")) // a
