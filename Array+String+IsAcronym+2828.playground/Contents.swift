// 2828. Check if a String Is an Acronym of Words
// https://leetcode.com/problems/check-if-a-string-is-an-acronym-of-words/

import Foundation

func isAcronym(_ words: [String], _ s: String) -> Bool {
    if words.count != s.count { return false }
    let sarr = Array(s)
    for i in 0..<words.count {
        if !words[i].hasPrefix(String(sarr[i])) {
            return false
        }
    }
    return true
}

print(isAcronym(["alice","bob","charlie"], "abc")) // true
print(isAcronym(["an","apple"], "a")) // false
print(isAcronym(["never","gonna","give","up","on","you"], "ngguoy")) // true
