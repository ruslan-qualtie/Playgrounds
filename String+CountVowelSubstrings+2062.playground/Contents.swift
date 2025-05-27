// 2062. Count Vowel Substrings of a String
// https://leetcode.com/problems/count-vowel-substrings-of-a-string/

import Foundation

func countVowelSubstrings(_ word: String) -> Int {
    if word.count < 5 { return 0 }
    let chars = Array(word), vowels = Set("aeiou")
    var count = 0
    for i in 0..<(chars.count - 4) {
        var seen = Set<Character>()
        for j in i..<chars.count {
            let char = chars[j]
            if vowels.contains(char) {
                seen.insert(char)
                if seen.count == 5 {
                    count += 1
                }
            } else {
                break
            }
        }
    }
    return count
}

print(countVowelSubstrings("aeiouu")) // 2
print(countVowelSubstrings("unicornarihan")) // 0
print(countVowelSubstrings("cuaieuouac")) // 7
