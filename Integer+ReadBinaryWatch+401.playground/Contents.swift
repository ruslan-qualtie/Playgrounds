// 401. Binary Watch
// https://leetcode.com/problems/binary-watch/

import Foundation

func readBinaryWatch(_ turnedOn: Int) -> [String] {
    var result = [String]()
    for h in 0...11 {
        for m in 0...59 {
            if turnedOn == (h.nonzeroBitCount + m.nonzeroBitCount) {
                if m > 9 {
                    result.append("\(h):\(m)")
                } else {
                    result.append("\(h):0\(m)")
                }
            }
        }
    }
    return result
}

print(readBinaryWatch(1)) // ["0:01","0:02","0:04","0:08","0:16","0:32","1:00","2:00","4:00","8:00"]
print(readBinaryWatch(9)) // []
