// 2325. Decode the Message
// https://leetcode.com/problems/decode-the-message/

import Foundation

func decodeMessage(_ key: String, _ message: String) -> String {
    var st = [Character](), result = st
    for char in key {
        if char.isLetter && !st.contains(char) {
            st.append(char)
        }
    }
    for char in message {
        if !char.isLetter {
            result.append(char)
        } else {
            let index = st.firstIndex(of: char)!
            result.append(Character(UnicodeScalar(97 + index)!))
        }
    }
    return String(result)
}

print(decodeMessage("the quick brown fox jumps over the lazy dog", "vkbs bs t suepuv")) // "this is a secret"
print(decodeMessage("eljuxhpwnyrdgtqkviszcfmabo", "zwx hnfx lqantp mnoeius ycgk vcnjrdb")) // "the five boxing wizards jump quickly"
