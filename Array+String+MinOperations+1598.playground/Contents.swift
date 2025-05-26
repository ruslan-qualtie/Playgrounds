// 1598. Crawler Log Folder
// https://leetcode.com/problems/crawler-log-folder/

import Foundation

func minOperations(_ logs: [String]) -> Int {
    var steps = 0
    for log in logs {
        if log == "../" {
            if steps > 0 {
                steps -= 1
            }
        } else if log == "./" {
            continue
        } else {
            steps += 1
        }
    }
    return steps
}

print(minOperations(["d1/", "d2/", "../", "d21/", "./"])) // 2
print(minOperations(["d1/", "d2/", "./", "d3/", "../", "d31/"])) // 3
print(minOperations(["d1/", "../", "../", "../"])) // 0

