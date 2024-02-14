class Solution {
    func hIndex(_ citations: [Int]) -> Int {
     guard !citations.isEmpty else { return 0 }
        var result = 0
        var array = citations
        array = array.sorted(by: >)
        
        for (index, item) in array.enumerated() {
            if item >= index + 1 {
                result += 1
            }
        }
        return result
    }
}