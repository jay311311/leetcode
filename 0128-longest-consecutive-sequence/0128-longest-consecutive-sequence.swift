class Solution {
    func longestConsecutive(_ nums: [Int]) -> Int {
        var set = Set(nums)
        var longestLength = 0 

        for num in set {
            if !set.contains(num - 1) {
                var currentNum = num
                var currentLength = 1

                while set.contains(currentNum + 1) {
                    currentNum += 1
                    currentLength += 1
                }
                longestLength = max(longestLength, currentLength)
            }
        }
        return longestLength
    }
}