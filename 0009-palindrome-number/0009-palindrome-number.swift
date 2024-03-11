class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        var intToArray = Array(String(x))
        
        return intToArray == intToArray.reversed()
    }
}