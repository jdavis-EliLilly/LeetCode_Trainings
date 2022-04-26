#Add lists together then reverse order

class Solution:
    def addTwoNumbers(l1[], l2[]):

        
        #Distill lists to their parts and add
        l1_sum = l1_list[-1]*100 + l1_list[-2]*10 + l1_list[-3] 
        l2_sum = l2[-1]*100 + l2[-2]*10 + l2[-3] 

        #Sum lists together
        l1_and_l2_sum = l1_sum + l2_sum

        #Convert sum to a list
        list= [int(a) for a in str(l1_and_l2_sum)]

        # finding the length of list
        length = len(list)

        # Swapping first and last element
        temp = list[0]
        list[0] = list[length - 1]
        list[length - 1] = temp
        result = list
        return result
