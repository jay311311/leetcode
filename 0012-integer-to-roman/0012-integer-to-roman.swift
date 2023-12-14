class Solution {
    func intToRoman(_ num: Int) -> String {
            var standard = [ 1: "I" , 5: "V", 10 : "X" , 50 :"L", 100 : "C", 500: "D", 1000: "M"]
    var result = ""
    var restNum = num
    var maxDiviedNum = 1000
    while maxDiviedNum != 0 {
        if restNum != num % maxDiviedNum {
            var value = restNum/maxDiviedNum * maxDiviedNum
            var restValue = restNum/maxDiviedNum
            if let string = standard[value] {
                result.append(string)
            } else {
                if restValue == 9 || restValue == 4 {
                    if let string = standard[maxDiviedNum], let placedString = standard[value + maxDiviedNum] {
                        result.append(string)
                        result.append(placedString)
                    }
                } else if restValue >= 5 {
                    value = 5 * maxDiviedNum
                    if let string = standard[value] {
                        result.append(string)
                    }
                    restValue = restValue % 5
                    for _ in  1...(restValue) {
                        if let string = standard[maxDiviedNum] {
                            result.append(string)
                        }
                    }
                } else {
                    for _ in  1...(restValue) {
                        if let string = standard[maxDiviedNum] {
                            result.append(string)
                        }
                    }
                }
            }
        }
        restNum = num % maxDiviedNum
        maxDiviedNum = maxDiviedNum / 10
    }
    return result
}
    
}