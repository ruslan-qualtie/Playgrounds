// 832. Flipping an Image
// https://leetcode.com/problems/flipping-an-image/

import Foundation

func flipAndInvertImage(_ image: [[Int]]) -> [[Int]] {
    var image = image
    for i in 0..<image.count {
        image[i] = image[i].reversed().map { $0 == 0 ? 1 : 0 }
    }
    return image
}

print(flipAndInvertImage([[1, 1, 0], [1, 0, 1], [0, 0, 0]])) // [[1, 0, 0], [0, 1, 0], [1, 1, 1]]
print(flipAndInvertImage([[1, 1, 0, 0], [1, 0, 0, 1], [0, 1, 1, 1], [1, 0, 1, 0]])) // [[1, 1, 0, 0], [0, 1, 1, 0], [0, 0, 0, 1], [1, 0, 1, 0]]
