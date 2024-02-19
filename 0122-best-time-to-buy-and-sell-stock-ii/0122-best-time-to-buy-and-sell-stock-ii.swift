class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
       var maxprofit = 0
        var previousPrice = prices[0]
        
        for price in prices {
            if price > previousPrice {
                var profit = price - previousPrice
                maxprofit += profit
            }
            previousPrice = price
        }
        
        return maxprofit 
    }
}