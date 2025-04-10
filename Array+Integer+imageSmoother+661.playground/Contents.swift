// 661. Image Smoother
// https://leetcode.com/problems/image-smoother/

import Foundation

func imageSmoother(_ img: [[Int]]) -> [[Int]] {
    var result = img
    for i in stride(from: 0, to: img.count, by: 1) {
        for j in stride(from: 0, to: img[0].count, by: 1) {
            let m = max(i - 1, 0), n = min(i + 1, img.count - 1)
            let k = max(j - 1, 0), l = min(j + 1, img[0].count - 1)
            var count = 0, sum = 0
            for x in m...n {
                for y in k...l {
                    count += 1
                    sum += img[x][y]
                }
            }
            result[i][j] = sum / count
        }
    }
    return result
}

print(imageSmoother([[1, 1, 1], [1, 0, 1], [1, 1, 1]])) // [[0, 0, 0], [0, 0, 0], [0, 0, 0]]
print(imageSmoother([[100, 200, 100], [200, 50, 200], [100, 200, 100]])) // [[137, 141, 137], [141, 138, 141], [137, 141, 137]]
