# 🐍 20 Python Practice Questions

## Level 1 — Logic & Core Python

1. FizzBuzz with a twist

Print numbers from 1 ‒ 100:

Multiples of 3 → "Fizz"

Multiples of 5 → "Buzz"

Multiples of both → "FizzBuzz"

Otherwise → number

2. Find the second-largest number

Given:

numbers = [12, 45, 7, 89, 23, 89, 34, 56]

Find the second-largest unique value without using sort() or sorted().

3. Count character frequency

Given:

text = "data science is about data"

Create a dictionary containing the frequency of each character.

Ignore spaces.

Expected concept:

d →?

a →?

t →?

...

4. Reverse words, not characters

Given:

sentence = "Python makes data science powerful"

Produce:

powerful science data makes Python

Don't use a library that directly reverses the sentence.

5. Find duplicates

Given:

numbers = [4, 7, 2, 4, 9, 7, 1, 2, 8, 4]

Return the values that occur more than once without returning duplicates in your result.

Expected:

[4, 7, 2]

## Level 2 — Algorithmic Thinking

6. Find the missing number

You have numbers from 1 to n, but one is missing.

numbers = [1, 2, 3, 5, 6, 7, 8]

Find the missing number.

Try solving it without using sum().

7. Two-sum problem

Given:

numbers = [2, 7, 11, 15] target = 9

Find the two indices whose values add up to target.

Expected:

[0, 1]

Then ask yourself:

Can I solve this in O(n) rather than O(n²)?

8. Find the longest word

Given:

words = ["python", "sql", "machine", "learning", "data", "engineering"]

Find the longest word without using max(..., key=len).

9. Run-length encoding

Given:

text = "aaabbccccdaa"

Produce:

a3b2c4d1a2

This is a great exercise for learning how to think through state changes inside loops.

10. Find the fi rst non-repeating character

Given:

text = "swiss"

Return:

w

If every character repeats, return None.

## 🧠 Python Practice Progress

### Level 1 — Logic & Core Python

#### 1. FizzBuzz with a twist

Completed — implemented conditional logic for multiples of 3, 5, and both.

#### 2. Find the second-largest number

Completed — found the second-largest unique value without using `sort()` or `sorted()`.

#### 3. Count character frequency

Completed — counted character occurrences while ignoring spaces.

#### 4. Reverse words, not characters

Completed — reversed word order while preserving the characters within each word.

#### 5. Find duplicates

Completed — identified values occurring more than once without duplicate outputs.

### Level 2 — Algorithmic Thinking

#### 6. Find the missing number

Completed — identified the missing value from a sequence without using `sum()`.

#### 7. Two-sum problem

Completed — found the indices of two values whose sum equals the target using a dictionary-based lookup approach.

Input:

```python
numbers = [2, 7, 11, 15]
target = 9
```

Expected output:

```text
[0, 1]
```

Key concepts practiced:

- Dictionary/hash-map lookup
- Complement calculation
- `enumerate()`
- O(n) time complexity

#### 8. Find the longest word

Completed — found the longest word by tracking the longest value seen during a single loop without using `max(..., key=len)`.

Input:

```python
words = ["python", "sql", "machine", "learning", "data", "engineering"]
```

Key concepts practiced:

- Tracking a best-so-far value
- String length comparison with `len()`
- Single-pass iteration
- O(n) time complexity

#### 9. Run-length encoding

Completed — converted consecutive repeated characters into character/count pairs.

Input:

```python
text = "aaabbccccdaa"
```

Expected output:

```text
a3b2c4d1a2
```

Key concepts practiced:

- State changes inside loops
- Tracking the current character
- Counting consecutive occurrences
- Detecting when a group ends
- Handling the final group after the loop

#### 10. Find the first non-repeating character

Completed — found the first character whose total frequency is exactly 1 while preserving the original character order.

Input:

```python
text = "swiss"
```

Expected output:

```text
w
```

If every character repeats, return:

```text
None
```

Key concepts practiced:

- Building a frequency dictionary from scratch
- Dictionary `.get()` for counting
- Two-pass algorithm
- Preserving original order
- Identifying characters with frequency `1`
- Handling the case where no unique character exists
- O(n) time complexity
- O(k) space complexity, where `k` is the number of distinct characters

**Progress: 10 / 20 Python questions completed ✅**

## Level 3 — Data Science Logic

11. Calculate mean without NumPy

Given:

values = [10, 20, 30, 40, 50]

Calculate the mean manually.

Then modify your code to handle:

values = []

without crashing.

12. Calculate median

Write a function:

median(values)

that works for both:

[1, 2, 3, 4, 5]

and:

[1, 2, 3, 4]

Don't use NumPy or statistics.

13. Remove outliers

Given:

values = [10, 12, 11, 13, 12, 15, 14, 100, 11, 13]

Using the IQR method, identify the outliers.

Your function should return:

normal_values outliers

14. Group and aggregate

Given:

sales = [

("Karachi", 1000), ("Lahore", 1500),

("Karachi", 2000), ("Islamabad", 1200), ("Lahore", 500),

("Karachi", 700)]

Calculate total sales per city.

Expected structure:

{"Karachi":...,

"Lahore":..., "Islamabad":...

}

Don't use pandas.

15. Build your own value counter

Create:

value_counts(values)

that behaves conceptually like pandas:

Series.value_counts()

For:

values = ["A", "B", "A", "C", "B", "A"]

Return:

{

"A": 3, "B": 2,

"C": 1}

## 🧠 Level 3 — Data Science Logic — Completed

#### 11. Calculate mean without NumPy

Completed — calculated the arithmetic mean using native Python and handled an empty list without crashing.

Key concepts practiced:

- Mean calculation
- List length
- Empty-input handling
- Basic defensive programming

#### 12. Calculate median

Completed — implemented median logic for both odd-length and even-length lists without NumPy or `statistics`.

Key concepts practiced:

- Sorting
- Integer division with `//`
- Odd vs. even list lengths
- Selecting the middle value(s)
- Averaging the two middle values for even-length lists

#### 13. Remove outliers

Completed — used the IQR method to separate normal values from outliers.

Input:

```python
values = [10, 12, 11, 13, 12, 15, 14, 100, 11, 13]
```

Expected result:

```text
normal_values = [10, 11, 11, 12, 12, 13, 13, 14, 15]
outliers = [100]
```

Key concepts practiced:

- Median calculation
- Q1 and Q3
- Interquartile range (IQR)
- Lower and upper bounds
- Separating normal values from outliers
- Edge-case handling for empty input

#### 14. Group and aggregate

Completed — calculated total sales for each city using a dictionary-based running total.

Expected output:

```python
{
    "Karachi": 3700,
    "Lahore": 2000,
    "Islamabad": 1200
}
```

Key concepts practiced:

- Dictionary aggregation
- Running totals
- Tuple unpacking
- Grouping by a key
- Python equivalent of SQL `GROUP BY` + `SUM()`

#### 15. Build your own value counter

Completed — built a frequency counter from scratch without `collections.Counter` or pandas.

Input:

```python
values = ["A", "B", "A", "C", "B", "A"]
```

Expected output:

```python
{
    "A": 3,
    "B": 2,
    "C": 1
}
```

Key concepts practiced:

- Dictionary frequency counting
- Membership checks with `in`
- Incrementing counters
- Recognizing reusable aggregation patterns
- Python equivalent of a categorical frequency count

**Progress: 15 / 20 Python questions completed ✅**

## Level 4 — Real Problem-Solving

16. Moving average

Given:

prices = [100, 102, 101, 105, 110, 108, 115]

Create a function that calculates a 3-day moving average.

Don't use pandas.

17. Detect increasing streaks

Given:

values = [10, 12, 15, 14, 16, 18, 20, 17]

Find the longest consecutive increasing streak.

For this dataset, the longest streak is:

14 → 16 → 18 → 20

with length 4.

18. Customer purchase analysis

Given:

transactions = [

("Alice", 100), ("Bob", 200),

("Alice", 150), ("Charlie", 300), ("Bob", 50),

("Alice", 200)]

Calculate:

1. Total spent per customer
2. Average transaction value per customer
3. Customer with the highest total spending

Don't use pandas.

19. Mini data-cleaning pipeline

Given:

data = [{"name": "Alice", "age": "25", "salary": "50000"},

{"name": "Bob", "age": "thirty", "salary": "60000"}, {"name": "Charlie", "age": "35", "salary": ""},

{"name": "David", "age": "40", "salary": "70000"}]

Build a cleaning function that:

Converts valid ages to integers

Converts salary to numbers

Detects invalid/missing values

Replaces missing salary with the median valid salary

Returns cleaned records

This one is very relevant to Data Science.

20. Mini analytical challenge — no pandas

Given:

employees = [{"name": "Alice", "department": "IT", "salary": 70000, "age": 28},

{"name": "Bob", "department": "HR", "salary": 50000, "age": 35}, {"name": "Charlie", "department": "IT", "salary": 90000, "age": 32}, {"name": "David", "department": "Finance", "salary": 80000, "age":

41}, {"name": "Eva", "department": "HR", "salary": 60000, "age": 29},

{"name": "Frank", "department": "Finance", "salary": 95000, "age":

36}]

Calculate:

Average salary

Median salary

Highest-paid employee

Average salary by department

Oldest employee

Employees earning above the overall average

Department with the highest average salary

Constraint: No pandas, NumPy, statistics, or other analytical libraries.

## 🧠 Level 4 — Real Problem-Solving — Completed

#### 16. Moving average

Completed — calculated a rolling average using native Python list slicing and a configurable window size without pandas.

Input:

```python
prices = [100, 102, 101, 105, 110, 108, 115]
```

For a 3-value window, the result is:

```text
[101.0, 102.67, 105.33, 107.67, 111.0]
```

Key concepts practiced:

- Sliding-window logic
- List slicing
- `range()` with `window`
- Dynamic window size
- Running calculations
- Rounding numeric results
- Understanding `len(values) - window + 1`

#### 17. Detect increasing streaks

Completed — tracked the current consecutive increasing streak and the longest streak seen so far using a single pass through the list.

Input:

```python
values = [10, 12, 15, 14, 16, 18, 20, 17]
```

Result:

```text
4
```

The longest streak is:

```text
14 → 16 → 18 → 20
```

Key concepts practiced:

- Single-pass iteration
- Comparing the current value with the previous value
- Tracking `current_streak`
- Tracking `longest_streak`
- Resetting state when the sequence stops increasing
- Handling empty input
- O(n) time complexity

#### 18. Customer purchase analysis

Completed — calculated total spending, average transaction value, and the customer with the highest total spending using dictionaries and loops.

Input:

```python
transactions = [
    ("Alice", 100),
    ("Bob", 200),
    ("Alice", 150),
    ("Charlie", 300),
    ("Bob", 50),
    ("Alice", 200)
]
```

Expected results:

```text
Total spent:
Alice   → 450
Bob     → 250
Charlie → 300

Average transaction value:
Alice   → 150
Bob     → 125
Charlie → 300

Highest total spending:
Alice → 450
```

Key concepts practiced:

- Dictionary aggregation
- Running totals
- Transaction counting
- Per-customer averages
- Tracking a maximum value and associated customer
- Tuple unpacking
- Grouping data with native Python
- Python equivalent of SQL `GROUP BY` + aggregate functions

#### 19. Mini data-cleaning pipeline

Completed — built a native Python data-cleaning pipeline that converts valid ages and salaries, detects invalid/missing values, calculates the median of valid salaries, and fills missing salaries with that median.

Input:

```python
data = [
    {"name": "Alice", "age": "25", "salary": "50000"},
    {"name": "Bob", "age": "thirty", "salary": "60000"},
    {"name": "Charlie", "age": "35", "salary": ""},
    {"name": "David", "age": "40", "salary": "70000"}
]
```

Result:

```python
[
    {"name": "Alice", "age": 25, "salary": 50000},
    {"name": "Bob", "age": 30, "salary": 60000},
    {"name": "Charlie", "age": 35, "salary": 60000},
    {"name": "David", "age": 40, "salary": 70000}
]
```

The robust version also handles invalid salary strings and the case where there are no valid salaries by using `None` rather than allowing the median calculation to fail.

Key concepts practiced:

- Data type conversion
- `try` / `except`
- Missing-value handling
- Validation
- Median calculation from scratch
- Two-pass data cleaning
- Imputation using the median
- Defensive programming
- Handling empty valid-value collections
- Practical data preprocessing logic

#### 20. Mini analytical challenge

Completed — built a complete native Python employee analytics workflow using separate reusable functions for each analytical task.

The solution calculates:

- Average salary → `74166.67`
- Median salary → `75000.0`
- Highest-paid employee → Frank, `95000`
- Average salary by department:
  - IT → `80000.0`
  - HR → `55000.0`
  - Finance → `87500.0`
- Oldest employee → David, `41`
- Employees earning above the overall average → Charlie, David, Frank
- Department with the highest average salary → Finance, `87500.0`

Key concepts practiced:

- Function design and separation of responsibilities
- Mean and median calculations
- Extracting values from nested dictionaries
- Finding a maximum record rather than only a maximum value
- Dictionary-based grouping and aggregation
- Department-level analysis
- Filtering records using a calculated threshold
- Returning structured results
- Iterative comparison and best-so-far tracking
- Translating SQL-style analytical thinking into native Python
- Reusable analytical functions
- No pandas, NumPy, `statistics`, or analytical libraries

**Python Progress: 20 / 20 questions completed 🎉**

### Level 4 Files

The completed Level 4 solutions are stored as:

```text
p_moving_average.py
q_longest_streak.py
r_purchase_analysis.py
s_mini_data_cleaning_pipeline.py
t_mini_analytical_challenge.py
```

# 🗄 20 SQL Practice Questions

Use SQL Server / T-SQL since that's what you've been practicing.

We'll use this conceptual schema:

customers ---------

customer_id customer_name

city signup_date

orders ------

order_id customer_id order_date

amount status

products --------

product_id product_name category

price

order_items ----------- order_id

product_id quantity

## Level 1 — SQL Fundamentals

1. Filtering

Find all orders where:

amount > 50, 000

status = 'Completed'

2. Aggregation

Calculate:

Total revenue

Average order value

Minimum order value

Maximum order value

Number of orders

3. GROUP BY

Calculate total revenue for each order status.

Expected concept:

Completed →...

Pending →...

Cancelled →...

4. HAVING

Find customers whose total spending exceeds 100, 000.

5. CASE

Create a column:

Low

Medium High

based on order amount:

< 10,000 → Low 10,000–50,000 → Medium

> 50,000 → High

## 🧠 SQL Practice Progress

### Level 1 — SQL Fundamentals — Completed

#### 1. Filtering

Completed — filtered orders using multiple conditions with `WHERE`.

Key concepts practiced:

- `WHERE`
- Comparison operators
- `AND`
- Filtering numeric and categorical values

#### 2. Aggregation

Completed — calculated total revenue, average order value, minimum order value, maximum order value, and number of orders.

Key concepts practiced:

- `SUM()`
- `AVG()`
- `MIN()`
- `MAX()`
- `COUNT()`
- Column aliases

#### 3. GROUP BY

Completed — calculated total revenue for each order status.

Key concepts practiced:

- `GROUP BY`
- Aggregate functions
- Group-level analysis
- Categorical aggregation

#### 4. HAVING

Completed — identified customers whose total spending exceeds 100,000.

Key concepts practiced:

- `GROUP BY`
- `HAVING`
- Filtering aggregated results
- Customer-level aggregation

#### 5. CASE

Completed — classified orders into Low, Medium, and High amount categories using `CASE`.

Key concepts practiced:

- `CASE`
- Conditional logic in SQL
- Derived columns
- Translating business rules into SQL

**SQL Progress: 5 / 20 questions completed ✅**

## Level 2 — Joins & Analytical Thinking

6. INNER JOIN

Return:

customer_name order_id

order_date amount

for every customer who has placed an order.

7. LEFT JOIN

Find customers who have never placed an order.

This is an extremely important Data Analyst interview pattern.

8. Revenue by city

Calculate total revenue generated by customers from each city.

You'll need:

customers → orders

9. Product revenue

Calculate revenue generated by each product.

You'll need:

products ↓

order_items ↓

orders

Revenue:

quantity × product price

10. Top customers

Find the top 5 customers by total spending.

Use:

TOP

fi rst.

Then solve the same problem using:

ROW_NUMBER()

## 🧠 Level 2 — Joins & Analytical Thinking — Completed

#### 6. INNER JOIN

Completed — joined `customers` and `orders` to return customers who have placed orders.

Key concepts practiced:

- `INNER JOIN`
- Matching records using primary/foreign keys
- Selecting columns from multiple tables
- Understanding one-to-many relationships

#### 7. LEFT JOIN

Completed — identified customers who have never placed an order using a `LEFT JOIN` and a `NULL` filter.

Key concepts practiced:

- `LEFT JOIN`
- Identifying unmatched records
- `NULL` filtering with `IS NULL`
- Finding customers with no related records
- Common Data Analyst interview pattern

#### 8. Revenue by city

Completed — calculated total completed-order revenue for each customer city.

Key concepts practiced:

- Joining `customers` to `orders`
- `SUM()`
- `GROUP BY`
- Filtering with `WHERE`
- Understanding result grain
- City-level revenue analysis

#### 9. Product revenue

Completed — calculated total completed-order revenue for each product using `products`, `order_items`, and `orders`.

Revenue was calculated using:

```text
quantity × product price
```

Key concepts practiced:

- Multi-table joins
- Joining through a bridge/detail table
- `SUM()`
- `GROUP BY`
- Calculated revenue
- Product-level aggregation

#### 10. Top customers

Completed — found the top 5 customers by completed-order spending using `ROW_NUMBER()`.

Key concepts practiced:

- Customer-level aggregation
- `SUM()`
- `ROW_NUMBER()`
- `ORDER BY` inside a window function
- Subqueries
- Filtering ranked results
- Understanding the difference between `TOP` and window-function ranking

**SQL Progress: 15 / 20 questions completed ✅**

## Level 3 — Window Functions

11. Rank customers

Rank customers by total spending.

Return:

customer_name

total_spending rank

Use:

RANK()

12. Running revenue

Calculate cumulative revenue ordered by order_date.

Expected structure:

order_date | amount | cumulative_revenue

Think:

SUM() OVER(...)

13. Customer running spending

For every customer, show each order and their cumulative spending up to that order.

Example:

Customer | Date | Amount | Running Total

Alice | Jan | 100 | 100 Alice | Feb | 200 | 300

Alice | Mar | 150 | 450

14. Compare each order with customer average

Return:

customer_id order_id

amount customer_average

difference_from_average

Use a window function rather than a subquery if you can.

15. Find each customer's largest order

Return the single largest order for every customer.

Try solving it with:

ROW_NUMBER()

rather than MAX().

## 🧠 Level 3 — Window Functions — Completed

#### 11. Rank customers

Completed — ranked customers by total spending using `RANK()`.

Key concepts practiced:

- Customer-level aggregation
- `SUM()`
- `RANK()`
- Window-function thinking
- `ORDER BY` inside a window function
- Handling tied rankings

#### 12. Running revenue

Completed — calculated cumulative revenue ordered by `order_date` using a windowed `SUM()`.

Key concepts practiced:

- `SUM() OVER()`
- Running/cumulative totals
- `ORDER BY` inside a window function
- Preserving individual rows while calculating cumulative values
- Chronological accumulation

#### 13. Customer running spending

Completed — calculated cumulative spending separately for each customer using a partitioned window function.

Key concepts practiced:

- `SUM() OVER()`
- `PARTITION BY`
- `ORDER BY`
- Customer-level running totals
- Understanding how `PARTITION BY` resets a calculation for each customer

#### 14. Compare each order with customer average

Completed — calculated each customer's average order amount and compared every order against that customer average using window functions.

Key concepts practiced:

- `AVG() OVER()`
- `PARTITION BY`
- Customer-level averages without collapsing rows
- Difference calculations
- Reusing a window-function calculation inside an expression
- Understanding why a `SELECT` alias cannot be directly reused in another expression in the same `SELECT` list

#### 15. Find each customer's largest order

Completed — identified the single largest order for every customer using `ROW_NUMBER()` instead of `MAX()`.

Key concepts practiced:

- `ROW_NUMBER()`
- `PARTITION BY`
- `ORDER BY ... DESC`
- Ranking rows within each customer
- Filtering ranked results with a CTE
- Selecting the complete row associated with the maximum value
- Understanding `ROW_NUMBER()` versus `MAX()`

## 🧠 Level 4 — Serious SQL Logic — Progress

### 16. Month-over-month revenue

Completed — calculated monthly completed-order revenue and used `LAG()` to compare each month with the previous month.

The solution calculates:

- Month
- Monthly revenue
- Previous month's revenue
- Revenue change
- Revenue change percentage

Key concepts practiced:

- `DATEFROMPARTS()`
- `YEAR()`
- `MONTH()`
- Monthly date grouping
- `SUM()`
- `GROUP BY`
- CTEs
- `LAG()`
- Window functions
- Previous-period comparisons
- Revenue change calculations
- Percentage change calculations
- `NULLIF()` to prevent division-by-zero errors
- `ROUND()` for percentage formatting
- Chronological ordering with `ORDER BY`

Important analytical pattern:

```text
Raw orders
    ↓
Monthly aggregation
    ↓
LAG() → Previous Month
    ↓
Current Revenue - Previous Revenue → Change
    ↓
Change / Previous Revenue → Revenue Change %
```

## 🧠 Level 4 — Serious SQL Logic — Progress

### 16. Month-over-month revenue

Completed — calculated monthly completed-order revenue and used `LAG()` to compare each month with the previous month.

The solution calculates:

- Month
- Monthly revenue
- Previous month's revenue
- Revenue change
- Revenue change percentage

Key concepts practiced:

- `DATEFROMPARTS()`
- `YEAR()`
- `MONTH()`
- Monthly date grouping
- `SUM()`
- `GROUP BY`
- CTEs
- `LAG()`
- Window functions
- Previous-period comparisons
- Revenue change calculations
- Percentage change calculations
- `NULLIF()` to prevent division-by-zero errors
- `ROUND()` for percentage formatting
- Chronological ordering with `ORDER BY`

Important analytical pattern:

```text
Raw orders
    ↓
Monthly aggregation
    ↓
LAG() → Previous Month
    ↓
Current Revenue - Previous Revenue → Change
    ↓
Change / Previous Revenue → Revenue Change %
```

### 17. Customer retention pattern

Completed — identified customers who placed completed orders in consecutive months by first creating one record per customer per month, then using `LAG()` to retrieve the previous active month and comparing it with the current month.

The solution was built in stages:

```text
Orders
    ↓
Customer + Month grouping
    ↓
One row per customer per month
    ↓
LAG() → Previous Month
    ↓
DATEADD(MONTH, 1, Previous Month)
    ↓
Compare with Current Month
    ↓
Identify consecutive-month customers
```

Key concepts practiced:

- `DATEFROMPARTS()`
- `YEAR()`
- `MONTH()`
- `GROUP BY`
- CTEs
- `LAG()`
- `PARTITION BY`
- `ORDER BY` inside window functions
- Previous-record analysis
- `DATEADD()`
- Consecutive-month detection
- Customer retention/activity patterns
- Understanding why duplicate orders within the same month must be grouped first
- Understanding why window-function results may need another CTE before filtering

Important SQL reasoning:

```text
Raw order dates
    ↓
Convert dates to month
    ↓
Deduplicate to customer/month grain
    ↓
Find previous month with LAG()
    ↓
Check whether current month = previous month + 1 month
```

### SQL Progress: 17 / 20 questions completed 🎯

18. Second-highest salary/order

Find the second-highest order amount without using:

TOP 2

and without using:

MAX()

Try:

DENSE_RANK()

19. Identify unusually large orders

Find the second-highest order amount without using:

TOP 2

and without using:

MAX()

Try:

DENSE_RANK()

19. Identify unusually large orders

For each order, calculate the customer's average order amount.

Return orders where:

order amount > customer average × 2

Output:

customer order

amount customer_average

This is a nice bridge between SQL and statistical thinking.

# 🔥 20. The Boss-Level SQL Challenge

You're given an e-commerce database.

Find the top 3 customers in each city by total spending.

Your output must contain:

city

customer_name total_spending city_rank

Requirements:

Join customers and orders

Aggregate spending

Rank customers within each city

Return only the top 3

Handle ties appropriately

You'll probably want:

PARTITION BY

and

DENSE_RANK()

# 🧠 How I want you to approach this

Don't just blast through these using Google/ChatGPT.

For every problem, use this process:

1. Understand the problem

↓

2. Identify the inputs

↓

3. Identify the desired output

↓

4. Think of the algorithm

↓

5. Write pseudocode

↓

6. Code it

↓

7. Test edge cases

↓

8. Optimize

↓

9. Explain your solution

And there's an important rule I'd recommend for you:

🚫 Don't immediately reach for pandas.

For the Python problems, solve the logic with native Python fi rst.

Once you've solved it, ask:

"How would I do this with pandas?"

That's going to train two di ff erent muscles:

Python → computational thinking + programming

Pandas/SQL → data manipulation + analytical thinking

And eventually you'll start seeing the same problem in multiple forms:

Python loop

↓

Python dictionary

↓

Pandas groupby

↓

SQL GROUP BY

↓

SQL window function
