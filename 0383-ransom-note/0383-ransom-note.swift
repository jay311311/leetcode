class Solution {
    func canConstruct(_ ransomNote: String, _ magazine: String) -> Bool {
         var result = false
    var ransomNoteArray:[Character] = []

    for item1 in ransomNote {
        ransomNoteArray.append(item1)
    }
    
        for item1 in magazine {
           if  let index =  ransomNoteArray.firstIndex(of: item1){
            ransomNoteArray.remove(at: index)
            }
        }

    return ransomNoteArray.count == 0 ? true : false
    }
}