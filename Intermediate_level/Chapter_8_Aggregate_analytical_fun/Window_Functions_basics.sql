/*
Window functions and GROUP BY funtions - similar to aggregate the values

but - 
has difference - in granularity 
GROUP  BY - simple aggregations , simple data analysis , and only common aggregate functions
different granularity , 

WINDOW functions --> same granularity, Advanced data analysis , more function like
Aggregate , rank , and Analytical functions


*/

-- SQL task --> find the total sales across all the orders

SELECT
SUM(Sales) AS total_sales
FROM Sales.Orders



-- SQL task --> find the total sales for each product

-- now use - GROUP BY clause - to group the each product - using ProductID

SELECT
	ProductID,
	SUM(Sales) AS total_sales
FROM sales.Orders
GROUP BY ProductID

--SQL task - find the total sales for each product 
-- Additionally provide details such as OrderID  and OrderDate
SELECT
	OrderID,
	OrderDate,
	ProductID
FROM sales.Orders
GROUP BY 
	OrderID,
	OrderDate,
	ProductID
	

/*
SQL task - same task using window function that is OVER() --> and PARTITION BY PRODUCTS

*/
SELECT
	SUM(sales) OVER(PARTITION BY PRODUCTID) TotalSalesByProducts
FROM Sales.Orders





