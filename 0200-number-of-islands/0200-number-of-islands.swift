class Solution {
    func numIslands(_ grid: [[Character]]) -> Int {
        guard grid.count >= 0, grid[0].count >= 0 else { return 0 }
        var count = 0
        var grid = grid 

        for row in 0..<grid.count {
            for col in 0..<grid[0].count {
                if grid[row][col] == "1"{
                bfs(row, col, &grid)
                count += 1
                }
            }
        }

        return count
    }

    func bfs(_ row: Int, _ col: Int, _ grid: inout [[Character]]) {
        var queue:[(Int,Int)] = []
        queue.append((row, col))
        grid[row][col] = "0"


        while queue.count != 0 {
            var current = queue.removeFirst()
            let (curRow, curCol) = current
            

            if curRow - 1 >= 0 , grid[curRow-1][curCol] == "1" {
                queue.append((curRow - 1, curCol))
                grid[curRow - 1][curCol] = "0"
            }

            if curRow + 1 < grid.count , grid[curRow + 1][curCol] == "1" {
                queue.append((curRow + 1, curCol))
                 grid[curRow + 1][curCol] = "0"
            }
            if curCol - 1 >= 0 , grid[curRow][curCol - 1] == "1" {
                queue.append((curRow, curCol - 1 ))
                grid[curRow][curCol - 1] = "0"
            }

            if curCol + 1 < grid[0].count , grid[curRow][curCol + 1] == "1" {
                queue.append((curRow, curCol + 1))
                grid[curRow][curCol + 1] = "0"

            }
        }
    }
}