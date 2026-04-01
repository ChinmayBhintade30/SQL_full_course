-- Rules for using the Window functions 

-- Window functions - 

SELECT
	ORDERID,
	OrderDate,
	OrderStatus,
	Sales,
	SUM(Sales) OVER(PARTITION BY OrderStatus) Total_Sales
FROM Sales.Orders
ORDER BY SUM(Sales) OVER(PARTITION BY OrderStatus) DESC 
--WHERE SUM(Sales) OVER(PARTITION BY OrderStatus) > 100



-- # rule 2 --> we cannot use the nesting in window function - nested window functions cannot be used
/*
SELECT
	ORDERID,
	OrderDate,
	OrderStatus,
	Sales,
	SUM(SUM(Sales) OVER (PARTITION BY OrderStatus))  OVER(PARTITION BY OrderStatus) Total_Sales
FROM Sales.Orders
*/


--# Rule 3 -->
--SQL execute WINDOW Functions after WHERE Clause
/*
Find the total sales for each order status,
only for two products 101 and 102
*/
-- first it will execute the where clause - which will filter the productID - 101 and 102 only 
-- then it will execute the window functions showing partition and total sales for this 2 ids
SELECT
	OrderID,
	OrderDate,
	OrderStatus,
	ProductID,
	Sales,
	SUM(Sales) OVER (PARTITION BY OrderStatus) Total_Sales
FROM Sales.Orders
WHERE ProductID IN(101,102)

