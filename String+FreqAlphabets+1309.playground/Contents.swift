// 1309. Decrypt String from Alphabet to Integer Mapping
// https://leetcode.com/problems/decrypt-string-from-alphabet-to-integer-mapping/

import Foundation

func freqAlphabets(_ s: String) -> String {
    var chars = [Character](), sarr = Array(s), i = sarr.count - 1
    while i >= 0 {
        var char = sarr[i]
        if sarr[i] == "#" {
            char = Character(UnicodeScalar(sarr[i - 2].wholeNumberValue! * 10 + sarr[i - 1].wholeNumberValue! + 96)!)
            i -= 3
        } else  {
            char = Character(UnicodeScalar(sarr[i].wholeNumberValue! + 96)!)
            i -= 1
        }
        chars = [char] + chars
    }
    return String(chars)
}

print(freqAlphabets("10#11#12")) // "jkab"
print(freqAlphabets("1326#")) // "acz"
