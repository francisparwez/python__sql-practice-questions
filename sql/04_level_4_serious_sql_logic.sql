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