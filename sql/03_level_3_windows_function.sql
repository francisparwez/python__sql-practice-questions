-- 11. Rank customers
	-- Rank customers by total spending.
-- Return:
	-- customer_name
	-- total_spending
	-- rank
-- Use:
	-- RANK()

SELECT
	c.customer_name,
	SUM(o.amount) AS total_spending,
	RANK() OVER (
		ORDER BY SUM(o.amount) DESC
	) AS rank
FROM
	customers c
JOIN
	orders o
ON c.customer_id = o.customer_id
WHERE o.status = 'Completed'
GROUP BY c.customer_name;


-- 12. Running revenue
-- Calculate cumulative revenue ordered by order_date .
-- Expected structure:
-- order_date | amount | cumulative_revenue
-- Think:
-- SUM() OVER(...)

SELECT
	order_date,
	amount,
	SUM(amount) OVER(
		ORDER BY order_date
	) AS cumulative_revenue
FROM
	orders
WHERE
	status = 'Completed';

-- 13. Customer running spending
-- For every customer, show each order and their cumulative spending up to that order.
-- Example:
-- Customer | Date | Amount | Running Total
-- Alice | Jan | 100 | 100
-- Alice | Feb | 200 | 300
-- Alice | Mar | 150 | 450

SELECT
	c.customer_id,
	c.customer_name,
	o.order_date,
	o.amount,
	SUM(o.amount) OVER (
		PARTITION BY c.customer_id
		ORDER BY order_date
	) AS running_total
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id;

-- 14. Compare each order with customer average
-- Return:
-- customer_id
-- order_id
-- amount
-- customer_average
-- difference_from_average
-- Use a window function rather than a subquery if you can.

SELECT
	c.customer_id,
	o.order_id,
	o.amount,
	AVG(o.amount) OVER (
		PARTITION BY c.customer_id
	) AS customer_average,
	o.amount - AVG(o.amount) OVER (
		PARTITION BY c.customer_id
	) AS difference_from_average
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id;

-- 15. Find each customer's largest order
-- Return the single largest order for every customer.
-- Try solving it with:
-- ROW_NUMBER()
-- rather than MAX() .

WITH largest_order AS (
	SELECT
		c.customer_name,
		o.order_id,
		o.amount,
		ROW_NUMBER() OVER (
			PARTITION BY c.customer_id
			ORDER BY o.amount DESC
		) AS rnk
	FROM customers c
	JOIN orders o
	ON c.customer_id = o.customer_id
) SELECT *
FROM largest_order
WHERE rnk = 1;





