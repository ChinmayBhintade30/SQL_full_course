/*
chapter 8 - 1 aggregate functions
SUM()
COUNT()
MAX()
MIN()
AVG()
*/

-- analyse orders table using aggregate functions
/*
SQL task - find the total number of orders in orders table
*/
 -- all the SQL query is on Mydatabase - no need to add sales. COUNT(*)
-- find the total sales of all orders - means sum of all orders SUM()
-- find the average sales of all the orders using AVG()
-- find the highest sales among all the orders - MAX()
-- find the lowest sales among all the orders - MIN()

SELECT
customer_id,
COUNT(*) As total_nr_orders,
SUM(sales) AS total_sales, -- sum of sales - total sales
AVG(sales) AS Avg_sales,-- Avg sales 
MAX(sales) AS highest_sales,
MIN(sales) AS lowest_sales
FROM Orders
GROUP BY customer_id

