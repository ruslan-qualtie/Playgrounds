// 804. Unique Morse Code Words
// https://leetcode.com/problems/unique-morse-code-words/

import Foundation

func uniqueMorseRepresentations(_ words: [String]) -> Int {
    let mc = [".-","-...","-.-.","-..",".","..-.","--.","....","..",".---","-.-",".-..","--","-.","---",".--.","--.-",".-.","...","-","..-","...-",".--","-..-","-.--","--.."]
    var trans = Set<String>()
    for word in words {
        var m = ""
        for char in word {
            let i = Int(char.asciiValue! - 97)
            m.append(mc[i])
        }
        trans.insert(m)
    }
    return trans.count
}

print(uniqueMorseRepresentations(["gin", "zen", "gig", "msg"])) // 2
print(uniqueMorseRepresentations(["a"])) // 1
