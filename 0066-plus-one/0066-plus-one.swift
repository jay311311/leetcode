class Solution {
    func plusOne(_ digits: [Int]) -> [Int] {
        var array = digits
            
        array[digits.count - 1] += 1

            for i in array.indices.reversed() {
                if array[i] > 9 {
                    array[i] = array[i] % 10
                
                    if i == 0 {
                        array.insert(1, at: 0)
                    } else {
                        array[i - 1] += 1
                    }
                }
            }
        return array
    }
}