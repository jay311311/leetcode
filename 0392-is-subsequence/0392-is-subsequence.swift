class Solution {
    func isSubsequence(_ s: String, _ t: String) -> Bool {
         if s.isEmpty {
            return true
        }
        var i = 0
        var sString = Array(s)
        for c in t {
            if sString[i] == c {
                i += 1
                if i == s.count {
                    return true
                }
            }
        }
        return false
    }
}