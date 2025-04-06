// 3114. Latest Time You Can Obtain After Replacing Characters
// https://leetcode.com/problems/latest-time-you-can-obtain-after-replacing-characters/

import Foundation

func findLatestTime(_ s: String) -> String {
    var sarr = Array(s)
    if sarr[0] == "?" {
        if sarr[1] == "?" || sarr[1] == "0" || sarr[1] == "1" {
            sarr[0] = "1"
        } else {
            sarr[0] = "0"
        }
    }
    if sarr[1] == "?" {
        if sarr[0] == "0" {
            sarr[1] = "9"
        } else {
            sarr[1] = "1"
        }
    }
    if sarr[3] == "?" {
        sarr[3] = "5"
    }
    if sarr[4] == "?" {
        sarr[4] = "9"
    }
    return String(sarr)
}

print(findLatestTime("0?:5?")) // "09:59"
print(findLatestTime("1?:?4")) // "11:54"
