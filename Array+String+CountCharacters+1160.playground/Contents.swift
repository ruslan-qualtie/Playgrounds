// 1160. Find Words That Can Be Formed by Characters
// https://leetcode.com/problems/find-words-that-can-be-formed-by-characters/

import Foundation

func countCharacters(_ words: [String], _ chars: String) -> Int {
    var freq = [Character: Int](), sum = 0
    for char in chars {
        freq[char, default: 0] += 1
    }
    for word in words {
        var isGood = true, chars = freq
        for char in word {
            chars[char, default: 0] -= 1
            if chars[char]! == -1 {
                isGood = false
                break
            }
        }
        if isGood {
            sum += word.count
        }
    }
    return sum
}

print(countCharacters(["cat","bt","hat","tree"], "atach")) // 6
print(countCharacters(["hello","world","leetcode"], "welldonehoneyr")) // 10
