class Solution:
    def convertToTitle(self, columnNumber: int) -> str:
        result = ''
        while columnNumber > 0:
            columnNumber = columnNumber - 1
            result += chr(65 + columnNumber%26)
            columnNumber = columnNumber//26
        return result[::-1]
        
        
        
   '''Runtime: 39 ms, faster than 54.62% of Python3 online submissions for Excel Sheet Column Title.
Memory Usage: 13.9 MB, less than 10.37% of Python3 online submissions for Excel Sheet Column Title.'''     
 



''' Desc
Given an integer columnNumber, return its corresponding column title as it appears in an Excel sheet.

For example:

A -> 1
B -> 2
C -> 3
...
Z -> 26
AA -> 27
AB -> 28 
...
 

Example 1:

Input: columnNumber = 1
Output: "A"
Example 2:

Input: columnNumber = 28
Output: "AB
"'''
