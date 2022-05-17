class Solution:
    def exist(self, board: List[List[str]], word: str) -> bool:
        rows = len(board)
        cols = len(board[0])
        n = len(word)
        
        # Exit early if no possible solution:
        if n > rows * cols:
            return False

        # Exit early if no possible solution:
        board_counts = Counter(sum(board, []))
        for c, count in Counter(word).items():
            if board_counts[c] < count:
                return False

        # Reverse the word if there are less starting points from end
        if board_counts[word[0]] > board_counts[word[-1]]:
            word = word[::-1]

        def backtrack(row, col, idx = 0):
            char = board[row][col]
            if char != word[idx]:
                return False
            elif idx == n - 1:
                return True
            
            board[row][col] = None
            
            #check using backtracker
            if row > 0 and backtrack(row - 1, col, idx + 1):
                return True
            if col > 0 and backtrack(row, col - 1, idx + 1):
                return True
            if row < rows - 1 and backtrack(row + 1, col, idx + 1):
                return True
            if col < cols - 1 and backtrack(row, col + 1, idx + 1):
                return True
            
            board[row][col] = char
            return False

        return any(backtrack(row, col)
                   for row in range(rows)
                   for col in range(cols))
      
      
      
'''
Runtime: 39 ms, faster than 99.75% of Python3 online submissions for Word Search.
Memory Usage: 14 MB, less than 52.04% of Python3 online submissions for Word Search.
'''
