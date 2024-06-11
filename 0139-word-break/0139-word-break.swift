class Solution {
    func wordBreak(_ s: String, _ wordDict: [String]) -> Bool {
        let wordSet = Set(wordDict)
        var dp = Array(repeating: false, count: s.count + 1 )
        dp[0] = true

        for i in 1...s.count {
            for j in 0..<i {
                let startIndex = s.index(s.startIndex, offsetBy: j)
                let endIndex = s.index(s.startIndex, offsetBy: i)
                let substring = String(s[startIndex..<endIndex])
                if dp[j] && wordSet.contains(substring) {
                    dp[i] = true
                    break
                }
            }
        }
    return dp[s.count]
    }
}