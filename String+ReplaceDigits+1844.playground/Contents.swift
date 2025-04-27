// 1844. Replace All Digits with Characters
// https://leetcode.com/problems/replace-all-digits-with-characters/

import Foundation

func replaceDigits(_ s: String) -> String {
    var sarr = Array(s)
    let n = sarr.count % 2 != 0 ? sarr.count - 1 : sarr.count
    for i in stride(from: 0, to: n, by: 2) {
        sarr[i + 1] = shift(sarr[i], sarr[i + 1])
    }
    return String(sarr)
}
private func shift(_ a: Character, _ b: Character) -> Character {
    Character(UnicodeScalar(Int(a.asciiValue!) + b.wholeNumberValue!)!)
}

print(replaceDigits("a1c1e1")) // "abcdef"
print(replaceDigits("a1b2c3d4e")) // "abbdcfdhe"
