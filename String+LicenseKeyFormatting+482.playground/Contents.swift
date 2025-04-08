// 482. License Key Formatting
// https://leetcode.com/problems/license-key-formatting/

import Foundation

func licenseKeyFormatting(_ s: String, _ k: Int) -> String {
    var chars = [String](), key = "", group = 0
    for char in s {
        if char != "-" {
            chars.append(char.uppercased())
        }
    }
    for i in (0..<chars.count).reversed() {
        group += 1
        key = chars[i] + key
        if group == k && i != 0 {
            key = "-" + key
            group = 0
        }
    }
    return key
}


print(licenseKeyFormatting("5F3Z-2e-9-w", 4)) // "5F3Z-2E9W"
print(licenseKeyFormatting("2-5g-3-J", 2)) // "2-5G-3J"
