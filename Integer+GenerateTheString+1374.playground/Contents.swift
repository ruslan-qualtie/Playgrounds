// 1374. Generate a String With Characters That Have Odd Counts
// https://leetcode.com/problems/generate-a-string-with-characters-that-have-odd-counts/

import Foundation

func generateTheString(_ n: Int) -> String {
    let char: Character = "a"
    var result = Array(repeating: char, count: n)
    if n % 2 == 0 {
        result[0] = "b"
    }
    return String(result)
}

print(generateTheString(4)) // baaa
print(generateTheString(2)) // ba
print(generateTheString(7)) // aaaaaaa
