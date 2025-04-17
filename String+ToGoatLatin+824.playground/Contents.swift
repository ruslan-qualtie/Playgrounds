// 824. Goat Latin
// https://leetcode.com/problems/goat-latin/

import Foundation

func toGoatLatin(_ sentence: String) -> String {
    let vowels = "aeiouAEIOU"
    var words = sentence.split(separator: " ")
    for i in 0..<words.count {
        var word = words[i]
        if vowels.contains(word.prefix(1)) {
            word += "ma"
        } else {
            let char = word.removeFirst()
            word += String(char) + "ma"
        }
        for j in 0...i {
            word += "a"
        }
        words[i] = word
    }
    return words.joined(separator: " ")
}

print(toGoatLatin("I speak Goat Latin")) // "Imaa peaksmaaa oatGmaaaa atinLmaaaaa"
print(toGoatLatin("The quick brown fox jumps over the lazy dog")) // "heTmaa uickqmaaa rownbmaaaa oxfmaaaaa umpedjmaaaaaa overmaaaaaaa hetmaaaaaaaa azylmaaaaaaaaa ogdmaaaaaaaaaa"
