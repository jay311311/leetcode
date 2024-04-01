class Solution {
    func validPalindrome(_ s: String) -> Bool {
        if s.isEmpty || s.count == 1 { return false }
        var minIndex = 0
        var maxIndex = s.count - 1
        var stringArray = Array(s)


        while minIndex <= maxIndex {
            if stringArray[minIndex] != stringArray[maxIndex] {
                return checkWithOnceDeleting(stringArray, minIndex+1, maxIndex) || checkWithOnceDeleting(stringArray, minIndex, maxIndex-1)
            }
            minIndex += 1
            maxIndex -= 1
        }
        return true
    }
    
    func checkWithOnceDeleting(_ array:[Character], _ start:Int, _ end: Int ) -> Bool {
        var start = start
        var end = end
        
        while start < end {
            if array[start] != array[end] {
                return false
            }
            start += 1
            end -= 1
        }
        return true
    }
    
}