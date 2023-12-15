class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        for firstIndex in 0...(nums.count - 2) {
        for secondIndex in (firstIndex+1)...(nums.count - 1){
            var sum = nums[firstIndex] + nums[secondIndex]
            if sum == target {
                return [firstIndex,secondIndex]
            }
        }
    }
    return []
    }
}