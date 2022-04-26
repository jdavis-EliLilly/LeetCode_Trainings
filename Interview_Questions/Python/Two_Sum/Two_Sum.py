   #Problem Statement
    
    '''Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.
        You may assume that each input would have exactly one solution, and you may not use the same element twice.'''
    
    
    
    # List to store results
    result = []
    # Dictionary to store the difference and its index
    index_map = {}
    # Loop for each element
    for i, n in enumerate(nums):
        # Difference which needs to be checked
        difference = target - n
        if difference in index_map:
            result.append(i)
            result.append(index_map[difference])
            break
        else:
            index_map[n] = i
    return result
