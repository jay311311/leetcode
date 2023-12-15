class Solution {
    func isValid(_ s: String) -> Bool {
        guard s != "" else { return false }
        var strings = s
        var standard = ["(":")", "{":"}", "[":"]"]
        var result:[String] = []
    
        for item in strings {
            var string = String(item)
            if standard.keys.contains(string) {
                result.append(string)
            } else if standard.values.contains(string) {
                if let resultLast = result.last {
                    if standard[resultLast] == string {
                        result.popLast()
                    } else {
                        result.append(string)
                    }
                } else {
                    result.append(string)
                }
            }
        }
    return result.isEmpty
    }
}