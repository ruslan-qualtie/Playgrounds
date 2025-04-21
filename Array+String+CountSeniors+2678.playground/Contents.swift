import Foundation

func countSeniors(_ details: [String]) -> Int {
    var count = 0
    for word in details {
        let warr = Array(word)
        let age = 10 * warr[11].wholeNumberValue! + warr[12].wholeNumberValue!
        if age > 60 {
            count += 1
        }
    }
    return count
}

print(countSeniors(["7868190130M7522","5303914400F9211","9273338290F4010"])) // 2
print(countSeniors(["1313579440F2036","2921522980M5644"])) // 0
