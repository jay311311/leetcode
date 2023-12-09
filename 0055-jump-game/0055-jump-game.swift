class Solution {
    func canJump(_ nums: [Int]) -> Bool {
        guard nums.count > 1 else  { return true }
        var maxJump = 1
        let array = nums
        
        for i in 0..<array.count {
            maxJump -= 1
            maxJump = max(maxJump, array[i])
            
            if maxJump == 0 {
                if i == array.count - 1 {
                    return true
                }
                return false
            }
        }
        return true
    }
}