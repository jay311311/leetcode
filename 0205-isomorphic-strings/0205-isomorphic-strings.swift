class Solution {
    func isIsomorphic(_ s: String, _ t: String) -> Bool {
         if s.count != t.count { return false }
        var issomophicHashForN:[String: String] = [:]
        
        var sHash = s.map{String($0)}
        var tHash = t.map{String($0)}
        
        for index in 0..<sHash.count {
            var sString = sHash[index]
            var tString = tHash[index]
            
            if issomophicHashForN.keys.contains(sString) {
                var result = issomophicHashForN[sString]
                if result != tString {
                    return false
                }
            }else {
                if issomophicHashForN.values.contains(tString) {
                    return false
                }else{
                    issomophicHashForN[sString] = tString
                }
            }
        }
        return true
    }
}