values = [10, 12, 15, 14, 16, 18, 20, 17]

def find_longest_streak(values):
    
    if len(values) == 0:
        return 0
    
    current_streak = 1
    longest_streak = 1
    
    prev_value = values[0]
    
    for current_value  in values[1:]:
        if current_value > prev_value:
            current_streak = current_streak + 1
        else:
            current_streak = 1
            
        if current_streak > longest_streak:
            longest_streak = current_streak
        
        prev_value = current_value
    
    return longest_streak

print(find_longest_streak(values))