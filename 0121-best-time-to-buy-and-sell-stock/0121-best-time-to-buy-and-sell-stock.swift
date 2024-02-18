class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var maxProfit = 0
        var minPrice = prices[0]
        
        for price in prices {
            var profit = price - minPrice
            maxProfit = max(profit, maxProfit)
            minPrice = min(minPrice, price)
        }
        return maxProfit
    }
}