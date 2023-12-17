class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        guard s.count > 0 else { return false }
        var sDic : [Character:Int] = [:]
        var tDic : [Character:Int] = [:]

        for string in s {
            if let sDicValye = sDic[string] {
                sDic[string] = sDicValye + 1
            } else {
                sDic[string] = 1
            }
        }
        for string in t {
            if let tDicValye = tDic[string] {
                tDic[string] = tDicValye + 1
            } else {
                tDic[string] = 1
            }
        }
        
        if sDic == tDic {
            return true
        } else {
            return false
        }
    }
}