class Solution {
    func containsNearbyDuplicate(_ nums: [Int], _ k: Int) -> Bool {
         var dic: [Int: Int] = [:]

        for (index, item) in nums.enumerated() {
            if let otherItem = dic[nums[index]],( index -  otherItem) <= k  {
                print(" \(otherItem) - \(index ) <= \(k)")
                return true
            }else {
                dic[nums[index]] = index
            }
        }
         return false
    }
}