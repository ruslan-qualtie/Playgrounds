// 1957. Delete Characters to Make Fancy String
// https://leetcode.com/problems/delete-characters-to-make-fancy-string/

import Foundation

func makeFancyString(_ s: String) -> String {
    var sarr = Array(s), result = [sarr[0]], count = 1
    for i in 1..<sarr.count {
        if sarr[i] == sarr[i - 1] {
            count += 1
        } else {
            count = 1
        }
        if count < 3 {
            result.append(sarr[i])
        }
    }
    return String(result)
}

print(makeFancyString("leeetcode")) // "leetcode"
print(makeFancyString("aaabaaaa")) // "aabaa"
print(makeFancyString("aab")) //"aab"
