// 1832. Check if the Sentence Is Pangram
// https://leetcode.com/problems/check-if-the-sentence-is-pangram/

import Foundation

func checkIfPangram(_ sentence: String) -> Bool {
    Set(sentence).count == 26
}

print(checkIfPangram("thequickbrownfoxjumpsoverthelazydog")) // true
print(checkIfPangram("leetcode")) // false
 
