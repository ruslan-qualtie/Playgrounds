// 2788. Split Strings by Separator
// https://leetcode.com/problems/split-strings-by-separator/

import Foundation

func splitWordsBySeparator(_ words: [String], _ separator: Character) -> [String] {
    var result = [String]()
    for word in words {
        result.append(contentsOf: word.split(separator: separator).map { String($0) })
    }
    return result
}

print(splitWordsBySeparator(["one.two.three", "four.five", "six"], ".")) // ["one","two","three","four","five","six"]
print(splitWordsBySeparator(["$easy$","$problem$"], "$")) // ["easy","problem"]
print(splitWordsBySeparator(["|||"], "|")) // []
