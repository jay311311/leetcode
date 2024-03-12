class Solution {
    func simplifyPath(_ path: String) -> String {
         var sepratePath = path.split(separator: "/")
        var result:[String] = []
        
        for string in sepratePath {
            if string == "." {
                continue
            }
            if string == ".." {
                result.popLast()
            } else {
                result.append("/\(string)")
            }
        }
        
        return result.joined() == "" ? "/" : result.joined()
    }
}