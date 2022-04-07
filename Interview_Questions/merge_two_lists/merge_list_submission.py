# Definition for singly-linked list.
# class ListNode:
#     def __init__(self, val=0, next=None):
#         self.val = val
#         self.next = next
class Solution:
    def mergeTwoLists(self, list1: Optional[ListNode], list2: Optional[ListNode]) -> Optional[ListNode]:
        
        
        def merge(h1,h2):
            if h1==None:
                return h2
            if h2==None:
                return h1
            
            if h1.val<=h2.val:
                h1.next=merge(h1.next,h2)
                return h1
            else:
                h2.next=merge(h2.next,h1)
                return h2
        
        return merge(list1,list2)
      
      
      '''Result
      
      Runtime: 47 ms
      Faster than 65.16%
      Memory Usage: 14.1 MB
      Less than 5.05% 
      '''
      
