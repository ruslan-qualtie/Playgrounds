// 500. Keyboard Row
// https://leetcode.com/problems/keyboard-row/

import Foundation

func findWords(_ words: [String]) -> [String] {
    let r1 = Set(Array("qwertyuiop")), r2 = Set(Array("asdfghjkl")), r3 = Set(Array("zxcvbnm"))
    var result = [String]()
    for word in words {
        let w = Set(Array(word.lowercased()))
        if r1.isSuperset(of: w) || r2.isSuperset(of: w) || r3.isSuperset(of: w) {
            result.append(word)
        }
    }
    return result
}

print(findWords(["Hello", "Alaska", "Dad", "Peace"])) // ["Alaska", "Dad"]
print(findWords(["omk"])) // []
print(findWords(["adsdf", "sfd"])) // ["adsdf", "sfd"]
