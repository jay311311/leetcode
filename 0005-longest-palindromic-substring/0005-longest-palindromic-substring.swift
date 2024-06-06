class Solution {
    func longestPalindrome(_ s: String) -> String {
    let charArray = Array(s)

        var start = 0
        var end = 0

        for i in 0..<charArray.count {
            for j in 0...1 {
                 var left = i
                var right = i + j
                while left >= 0 && right <= (charArray.count - 1) && charArray[left] == charArray[right] {
                    left -= 1
                    right += 1
                }
                 left += 1
                right -= 1
                if (right - left) > (end - start) {
                    start = left
                    end = right
                }
            }
        }
        let maximumPalindromicString = String(charArray[start...end])
        return maximumPalindromicString
    }
}