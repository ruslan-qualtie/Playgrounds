import Foundation

func maxArea(_ height: [Int]) -> Int {
    var left = 0, right = height.count - 1, maxArea = 0
    while left < right {
        let area = min(height[left], height[right]) * (right - left)
        maxArea = max(maxArea, area)
        if height[left] > height[right] {
            right -= 1
        } else {
            left += 1
        }
    }
    return maxArea
}

print(maxArea([1,8,6,2,5,4,8,3,7]))  //49
