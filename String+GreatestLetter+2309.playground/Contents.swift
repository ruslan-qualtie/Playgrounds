// 2309. Greatest English Letter in Upper and Lower Case
// https://leetcode.com/problems/greatest-english-letter-in-upper-and-lower-case/

import Foundation

func greatestLetter(_ s: String) -> String {
    var result = ""
    for char in s {
        if s.contains(char.lowercased()) && s.contains(char.uppercased()) {
            if result < char.uppercased() {
                result = char.uppercased()
            }
        }
    }
    return result
}

print(greatestLetter("lEeTcOdE")) // "E"
print(greatestLetter("arRAzFif")) // "R"
print(greatestLetter("AbCdEfGhIjK")) // ""
