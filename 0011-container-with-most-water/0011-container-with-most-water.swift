class Solution {
    func maxArea(_ height: [Int]) -> Int {
        if height.count < 1 { return 0 }
        
        var start =  0
        var end = height.count - 1
        var maxAmount = 0
        
        while start < end {
            let waterAmount = (end - start) * min(height[start], height[end])
            
                maxAmount = max(maxAmount, waterAmount)
            if height[start] <= height[end] {
                start += 1
            }else {
                end -= 1
            }
        }
        
        return maxAmount
    }
}