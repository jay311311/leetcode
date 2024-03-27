
class MinStack {

    var array: [Int] = []
    var minStack: [Int] = []
    
    func push(_ val: Int) {
        array.append(val)

        if minStack.isEmpty{
            minStack.append(val)
        } else {
            var min  = min(minStack.last! , val)
            minStack.append(min)
        }
    }
    
    func pop() {
        if array.last != nil {
           array.popLast()
           minStack.popLast()
        } 
    }
    
    func top() -> Int {
        return array.last ?? 0
    }
    
    func getMin() -> Int {
       return minStack.last ?? 0
    }
}

/**
 * Your MinStack object will be instantiated and called as such:
 * let obj = MinStack()
 * obj.push(val)
 * obj.pop()
 * let ret_3: Int = obj.top()
 * let ret_4: Int = obj.getMin()
 */