class Solution {
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        guard nums1.count == m + n else { return }
        guard nums2.count == n else { return }
    
        var num1LastIndex = nums1.count - 1
    
        for i in nums2 {
            nums1.append(i)
        }
        
        while nums1.count != m + n {
            if nums1.count > m + n  {
                nums1.remove(at: num1LastIndex)
                num1LastIndex -= 1
            }
        }
        nums1 = nums1.sorted()
    }
}