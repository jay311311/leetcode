class Solution {
    func isPalindrome(_ s: String) -> Bool {
        var string = s.lowercased()
        
        // remove punctuation characters, whitespace and symbols
        string = string.filter { !$0.isWhitespace   &&   !$0.isPunctuation  && !$0.isSymbol }
        // reverse the string
        let reversedString = String(string.reversed())
        return string == reversedString
    }
}