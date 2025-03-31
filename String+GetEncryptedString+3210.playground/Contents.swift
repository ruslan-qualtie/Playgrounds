// 3210. Find the Encrypted String
// https://leetcode.com/problems/find-the-encrypted-string/

import Foundation

func getEncryptedString(_ s: String, _ k: Int) -> String {
    var result = "", sArr = Array(s), n = sArr.count
    for i in 0..<n {
        result.append(sArr[(i + k) % n])
    }
    return result
}

print(getEncryptedString("dart", 3)) // tdar
print(getEncryptedString("aaa", 1)) // aaa
