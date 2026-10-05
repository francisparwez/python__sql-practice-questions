--  16. Month-over-month revenue
--  Calculate monthly revenue:
--      Month | Revenue | Previous Month | Change
--  Then calculate:
--      Revenue Change %
--  You'll need:
--      LAG()

WITH monthly_revenue AS (
	SELECT
		DATEFROMPARTS(YEAR(order_date), MONTH(order_date), 1) AS [Month],
		SUM(amount) AS Revenue
	FROM
		orders
	WHERE
		status = 'Completed'
	GROUP BY
		DATEFROMPARTS(YEAR(order_date), MONTH(order_date), 1)
)
SELECT
	[Month],
	Revenue,
	LAG(Revenue) OVER(ORDER BY [Month]) AS [Previous Month],
	Revenue - LAG(Revenue) OVER(ORDER BY [Month]) AS [Change],
	ROUND(
		100.0 * (Revenue - LAG(Revenue) OVER(ORDER BY [Month]))
		/ NULLIF(LAG(Revenue) OVER (ORDER BY [Month]), 0),
		2
	)
FROM monthly_revenue
ORDER BY [Month];

-- 17. Customer retention pattern
-- Find customers who placed an order in two consecutive months.
-- This will force you to think about:
--	dates
--	grouping
--	window functions
--	previous records
WITH customers_month AS (
	SELECT
		customer_id,
		DATEFROMPARTS(YEAR(order_date), MONTH(order_date), 1) AS [Month]
	FROM orders
	WHERE status = 'Completed'
	GROUP BY
		customer_id,
		DATEFROMPARTS(YEAR(order_date), MONTH(order_date), 1)
)
SELECT
    customer_id,
    [Month],
    LAG([Month]) OVER (
        PARTITION BY customer_id
        ORDER BY [Month]
    ) AS [Previous Month]
FROM customers_month
ORDER BY
    customer_id,
    [Month];

-- 18. Second-highest salary/order
-- Find the second-highest order amount without using:
--	TOP 2
-- and without using:
--	MAX()
-- Try:
--	DENSE_RANK()

WITH
    ranked_orders AS (
        SELECT amount, DENSE_RANK() OVER (
                ORDER BY amount DESC
            ) as rnk
        FROM orders
    )
SELECT amount
FROM ranked_orders
WHERE
    rnk = 2;

-- 19. Identify unusually large orders
-- For each order, calculate the customer's average order amount.
-- Return orders where:
-- 	order amount > customer average × 2
-- Output:
-- 	customer
-- 	order
-- 	amount
-- 	customer_average

-- This is a nice bridge between SQL and statistical thinking

WITH
    customer_average AS (
        SELECT
            c.customer_id,
            o.order_id,
            o.amount,
            AVG(o.amount) OVER (
                PARTITION BY
                    c.customer_id
            ) AS avg_amount_by_customer
        FROM customers c
            JOIN orders o ON c.customer_id = o.customer_id
    )
SELECT *
FROM customer_average
WHERE
    amount > avg_amount_by_customer * 2

-- 20. The Boss-Level SQL Challenge
-- You're given an e-commerce database.
-- Find the top 3 customers in each city by total spending.
-- Your output must contain:
-- 	city
-- 	customer_name
-- 	total_spending
-- 	city_rank
-- Requirements:
-- 	Join customers and orders
-- 	Aggregate spending
-- 	Rank customers within each city
-- 	Return only the top 3
-- 	Handle ties appropriately
-- You'll probably want:
-- 	PARTITION BY
-- and
-- 	DENSE_RANK()


WITH customers_in_city_by_spending AS (
	SELECT
		c.customer_name,
		c.city,
		SUM(o.amount) AS total_spending,
		DENSE_RANK() OVER (
			PARTITION BY c.city
			ORDER BY SUM(o.amount) DESC
		) AS city_rank
	FROM
		customers c
	JOIN orders o
	ON c.customer_id = o.customer_id
	GROUP BY c.customer_name, c.city
) SELECT *
FROM customers_in_city_by_spending
WHERE city_rank <= 3;
