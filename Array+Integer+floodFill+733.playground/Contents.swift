import Foundation

func floodFill(_ image: [[Int]], _ sr: Int, _ sc: Int, _ color: Int) -> [[Int]] {
    var oc = image[sr][sc], image = image, queue = [[sr, sc]]
    if oc == color { return image }
    while !queue.isEmpty {
        let p = queue.removeFirst()
        let r = p[0], c = p[1]
        image[r][c] = color
        if r - 1 >= 0 && image[r - 1][c] == oc { queue.append([r - 1, c]) }
        if r + 1 < image.count && image[r + 1][c] == oc { queue.append([r + 1, c]) }
        if c - 1 >= 0 && image[r][c - 1] == oc { queue.append([r, c - 1]) }
        if c + 1 < image[0].count && image[r][c + 1] == oc { queue.append([r, c + 1]) }
    }
    return image
}

print(floodFill([[1, 1, 1], [1, 1, 0], [1, 0, 1]], 1, 1, 2)) // [[2, 2, 2], [2, 2, 0], [2, 0, 1]]
print(floodFill([[0, 0, 0], [0, 0, 0], [0, 0, 0]], 1, 1, 0)) // [[0, 0, 0], [0, 0, 0], [0, 0, 0]]

