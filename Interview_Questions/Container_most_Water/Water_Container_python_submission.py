#Submission shrinks each iteration

class Solution:
    def maxArea(self, height: List[int]) -> int:
        left, right, area = 0, len(height) - 1, 0
        while left < right:
            area = max(area, (right - left) * min(height[left], height[right]))
            if height[left] < height[right]:
                left += 1
            else:
                right -= 1

        return area
