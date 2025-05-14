// 3541. Find Most Frequent Vowel and Consonant
// https://leetcode.com/problems/find-most-frequent-vowel-and-consonant/

import Foundation

func maxFreqSum(_ s: String) -> Int {
    let vowels = "aeiou".map { $0 }
    var vmap = [Character: Int](), cmap = vmap, vmax = 0, cmax = 0
    for char in s {
        if vowels.contains(char) {
            vmap[char, default: 0] += 1
            vmax = max(vmax, vmap[char]!)
        } else {
            cmap[char, default: 0] += 1
            cmax = max(cmax, cmap[char]!)
        }
    }
    return vmax + cmax
}

print(maxFreqSum("successes")) // 6
print(maxFreqSum("aeiaeia")) // 3
