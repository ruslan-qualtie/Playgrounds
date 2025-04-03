// 3146. Permutation Difference between Two Strings
// https://leetcode.com/problems/permutation-difference-between-two-strings/

import Foundation

func findPermutationDifference(_ s: String, _ t: String) -> Int {
    var arrs = Array(s), arrt = Array(t), diff = 0
    for i in 0..<arrs.count {
        for j in 0..<arrt.count {
            if arrs[i] == arrt[j] {
                diff += abs(i - j)
            }
        }
    }
    return diff
}

func findPermutationDifference2(_ s: String, _ t: String) -> Int {
    var arrs = Array(s), arrt = Array(t), diff = 0, maps = [Character: Int](), mapt = [Character: Int]()
    for i in 0..<arrs.count {
        maps[arrs[i]] = i
        mapt[arrt[i]] = i
    }
    for char in s {
        diff += abs(maps[char]! - mapt[char]!)
    }
    return diff
}

func findPermutationDifference3(_ s: String, _ t: String) -> Int {
    var arrs = Array(s), arrt = Array(t), diff = 0, maps = [Character: Int]()
    for i in 0..<arrs.count {
        maps[arrs[i]] = i
    }
    for i in 0..<arrt.count {
        diff += abs(maps[arrt[i]]! - i)
    }
    return diff
}

print(findPermutationDifference("abc", "bac")) // 2
print(findPermutationDifference("abcde", "edbac")) // 12

print(findPermutationDifference2("abc", "bac")) // 2
print(findPermutationDifference2("abcde", "edbac")) // 12

print(findPermutationDifference3("abc", "bac")) // 2
print(findPermutationDifference3("abcde", "edbac")) // 12
