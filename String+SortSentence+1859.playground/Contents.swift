// 1859. Sorting the Sentence
// https://leetcode.com/problems/sorting-the-sentence/

import Foundation

func sortSentence(_ s: String) -> String {
    s.split(separator: " ").sorted{$0.last! < $1.last!}.map{$0.dropLast()}.joined(separator: " ")
}

print(sortSentence("is2 sentence4 This1 a3")) // "This is a sentence"
print(sortSentence("Myself2 Me1 I4 and3")) // "Me Myself and I"
