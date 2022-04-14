class Solution:
    def trap(self, height: List[int]) -> int:
		#calculate all space that can be filled with water on right
        maxh=height[0]
        c=[0]*len(height)
        for i in range(1,len(height)):
            if height[i]>maxh:
                maxh=height[i]
            else:
                k=maxh-height[i]
                c[i]=k
		#calculate all space that can be filled with water on left
        maxh=height[len(height)-1]
        d=[0]*len(height)
        for i in range(len(height)-2,-1,-1):
            if height[i]>maxh:
                maxh=height[i]
            else:
                k=maxh-height[i]
                d[i]=k
        ans=0
		#add minimum of each waterfilled Space to the ans
        for i in range(len(height)):
            ans+=min(c[i],d[i])
        return ans
