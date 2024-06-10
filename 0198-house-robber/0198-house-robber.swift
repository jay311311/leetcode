class Solution {
    func rob(_ nums: [Int]) -> Int {
        var maxValue = 0
        var results = [Int]()
        for (index, num) in nums.enumerated() {
            let value = num + max(index >= 2 ? results[index - 2] : 0, (index >= 3 ? results[index - 3] : 0))
            results.append(value)
            maxValue = max(value, maxValue)
        }
        print(results)
        return maxValue
        // if nums.isEmpty {return 0 }
        // if nums.count == 1 {return nums[0]}

        // var prev1 = 0
        // var prev2 = 0

        // for num in nums {
        //     let temp = prev1
        //     prev1 = max(prev2 + num , prev1)
        //     prev2 = temp 
        // }

        // return prev1
    }
}