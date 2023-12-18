class Solution {
    func wordPattern(_ pattern: String, _ s: String) -> Bool {
           var result = false
    let conpenets = s.components(separatedBy: " ")
    
    var sEqualIndex:[String:[Int]]  = [:]
    var pEqualIndex:[Character:[Int]]  = [:]
    
    for index1 in 0..<conpenets.count {
        let letter = conpenets[index1]
        if let hasEqualIndex = sEqualIndex[letter] {
            var modifiedValue = hasEqualIndex
            modifiedValue.append(index1)
            sEqualIndex[letter] = modifiedValue
        }else {
            sEqualIndex[letter] = [index1]
        }
    }
    
    for index1 in 0..<pattern.count {
        let stringIndex = pattern.index(pattern.startIndex, offsetBy: index1)
        let letter = pattern[stringIndex]
        if let hasEqualIndex = pEqualIndex[letter] {
            var modifiedValue = hasEqualIndex
            modifiedValue.append(index1)
            pEqualIndex[letter] = modifiedValue
        }else {
            pEqualIndex[letter] = [index1]
        }
        
    }
    
    let sValues = sEqualIndex.map {  $0.1 }
    let pValues = pEqualIndex.map {  $0.1 }
    for vlaue in pValues {
        if sValues.contains{$0 == vlaue} {
            result = true
        }else {
            return false
        }
    }
    return  result
    }
}