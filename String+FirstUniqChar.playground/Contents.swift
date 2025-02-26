import Foundation

func firstUniqChar(_ s: String) -> Int {
    var freq = [Character: Int]()
    for char in s {
        freq[char, default: 0] += 1
    }
    var index = 0
    for char in s {
        if freq[char] == 1 {
            return index
        }
        index += 1
    }
    return -1
}

print(firstUniqChar("loveleetcode"))
