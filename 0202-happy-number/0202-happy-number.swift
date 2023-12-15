class Solution {
    func isHappy(_ n: Int) -> Bool {
        if n <= 0 { return false }
        var valuArray:Set<Int> = []
        var result = n
        var isDuplicated = false
        while !isDuplicated {
            let happyValue = makeSqureOfdigit(result)
            result = happyValue
            if happyValue == 1 {
                isDuplicated.toggle()
            } else if valuArray.contains(happyValue) {
                isDuplicated.toggle()
            } else {
                valuArray.insert(happyValue)
            }
        }
        return result == 1 ? true :  false
    }

    func makeSqureOfdigit(_ n: Int) -> Int {
    var resultNum = n
    var numOfMutiple = String(resultNum).count
    var placeValue = 1
    var returnValue = 0
    for _ in 1...numOfMutiple {
        let value = n % (placeValue * 10) / placeValue
        placeValue *= 10
        returnValue += Int(pow(Double(value),2))
    }
    return returnValue
}
}