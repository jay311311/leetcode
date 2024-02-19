class Solution {
    func reverseWords(_ s: String) -> String {
        var splitedStrings = s.split(separator: " ")
        splitedStrings.reverse()
        return splitedStrings.joined(separator: " ")
    }
}