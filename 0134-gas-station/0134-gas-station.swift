class Solution {
    func canCompleteCircuit(_ gas: [Int], _ cost: [Int]) -> Int {
         var totalGas = gas.reduce(0, +)
        var totalCost = cost.reduce(0, +)
 
        if totalCost > totalGas {
            return -1
        }
        
        var gasTank = 0
        var startIndex = 0

        for index in 0..<gas.count {
            let position = gas[index] - cost[index]
            gasTank += position
            
            if gasTank < 0 {
                gasTank = 0
                startIndex = index + 1
            }
        }
        
        return startIndex
    }
}