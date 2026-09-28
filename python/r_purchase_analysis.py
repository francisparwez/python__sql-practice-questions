transactions = [
    ("Alice", 100),
    ("Bob", 200),
    ("Alice", 150),
    ("Charlie", 300),
    ("Bob", 50),
    ("Alice", 200)
]

def analyze_transactions(transactions):
    totals = {}
    counts = {}
    
    for customer, amount in transactions:
        
        if customer not in totals:
            totals[customer] = 0
            counts[customer] = 0
            
        totals[customer] += amount        
        counts[customer] += 1
    
    averages = {}
    for customer in totals:
        averages[customer] = totals[customer] / counts[customer]
        
    highest_customers = None
    highest_total = 0
       
    for customer, total in totals.items():
        if total > highest_total:
            highest_total = total
            highest_customers = customer
            
    return (
        f"Total Spent Per Customer: {totals}\n"
        f"Average Transaction Value Per Customer: {averages}\n"
        f"{highest_customers} Has The Highest Total Spending: {highest_total}"
    )


print(analyze_transactions(transactions))
