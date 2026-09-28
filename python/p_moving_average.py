prices = [100, 102, 101, 105, 110, 108, 115]

def moving_average(values, window):    
    averages = []
    value_length = len(values)
    
    for i in range(value_length - window + 1):
        averages.append(round(sum(values[i:i+window])/window, 2))
        
    return averages
    
print(moving_average(prices, 3)) 
    