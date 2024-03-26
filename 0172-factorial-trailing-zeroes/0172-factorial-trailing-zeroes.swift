class Solution {
     func trailingZeroes(_ n: Int) -> Int {
         if n < 5 { return 0 }
        var result = 0
        var curv = 5
        
        while (curv <= n) {
            result += n / curv
            curv *= 5
        }
        return result
    }

}