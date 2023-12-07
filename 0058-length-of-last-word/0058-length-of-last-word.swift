class Solution {
    func lengthOfLastWord(_ s: String) -> Int {
      var word = s
      var splitWord = word.split(separator: " ")  
      if let lastWord = splitWord.last {
          return lastWord.count
      } else {
          return 0
      }
    }
}