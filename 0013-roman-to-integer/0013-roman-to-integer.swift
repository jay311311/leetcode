class Solution {
    func romanToInt(_ s: String) -> Int {
        guard s != ""  else { return 0 }
        let string = s
        var previousNum = 0
        var result  = 0
        var splitedString :[String] = []

        let standard = ["I": 1, "V": 5, "X": 10, "L": 50, "C": 100, "D": 500, "M": 1000]
        for i in string {
            splitedString.append(String(i))
        }
        splitedString = splitedString.reversed()
        for string in splitedString {
            guard let convertedNum = standard[string] else { return result }

            if previousNum <= convertedNum {

                result += convertedNum
            } else {
                result -= convertedNum
            }
            previousNum = convertedNum
        }

        return result
    }
}