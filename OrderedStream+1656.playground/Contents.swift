// 1656. Design an Ordered Stream
// https://leetcode.com/problems/design-an-ordered-stream/

import Foundation

class OrderedStream {
    private var chuncks:[String]
    private var pointer = 0

    init(_ n: Int) {
        self.chuncks = Array(repeating: "", count: n)
    }
    
    func insert(_ idKey: Int, _ value: String) -> [String] {
        chuncks[idKey - 1] = value
        var result:[String] = []
        while pointer < chuncks.count && !chuncks[pointer].isEmpty {
            result.append(chuncks[pointer])
            pointer += 1
        }
        return result
    }
}

let obj = OrderedStream(5)
let ret_1: [String] = obj.insert(3, "ccccc")
let ret_2: [String] = obj.insert(1, "aaaaa")
let ret_3: [String] = obj.insert(2, "bbbbb")
let ret_4: [String] = obj.insert(5, "eeeee")
let ret_5: [String] = obj.insert(4, "ddddd")
print(ret_1, ret_2, ret_3, ret_4, ret_5) // [] ["aaaaa"] ["bbbbb", "ccccc"] [] ["ddddd", "eeeee"]
