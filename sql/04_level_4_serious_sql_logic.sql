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