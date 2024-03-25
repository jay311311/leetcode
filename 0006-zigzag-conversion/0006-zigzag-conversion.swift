class Solution {
    func convert(_ s: String, _ numRows: Int) -> String {
        if numRows <= 1 {return s}
        var resultArray = Array(repeating: "", count: numRows)
        var i = 0 
        var goingDown = true

        for string in s {
            resultArray[i].append(String(string))

            if i == 0 {
                goingDown = true
            } else if (i == numRows - 1) {
                goingDown = false
            }

             if goingDown {
                i += 1
            } else {
                i -= 1
            } 
        }
        return resultArray.joined()
    }
}