class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        var result: [String: [String]]  = [:]
        for word in strs {
            var splitWord = String(word.sorted())
            result[splitWord, default: []].append(word)
        }
        return Array(result.values)
    }
}