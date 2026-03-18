-- frame clause - 
--ROWS BETWEEN LOWER VALUE (lower limit) AND HIGHER VALUE(upper limit)

-- it has different types of limits
-- 	BETWEEN CURRENT ROW AND 2 FOLLOWING 
SELECT
OrderID,
OrderDate,
OrderStatus,
Sales,
SUM(Sales) OVER (PARTITION BY OrderStatus ORDER BY OrderDate
ROWS BETWEEN CURRENT ROW AND 2 FOLLOWING) TotalSales
FROM Sales.Orders


-- BETWEEN 2 PRECEDING AND CURRENT ROW 

-- it considers the aggregation that is the SUM() between the current row and the previous 2 rows
SELECT 
OrderID,
OrderDate,
OrderStatus,
Sales,
SUM(Sales) OVER(PARTITION BY OrderStatus ORDER BY OrderDate 
ROWS BETWEEN 2 PRECEDING AND CURRENT ROW) Total_Sales
from Sales.Orders


-- SHORT FORM 
SELECT
OrderID,
OrderDate,
OrderStatus,
Sales,
SUM(Sales) OVER(PARTITION BY OrderStatus ORDER BY OrderDate
ROWS 2 PRECEDING) Total_Sales
from Sales.Orders

-- COMPACT NAME 

-- for only preceding the current row can be skipped
-- Normal form - ROWS BETWEEN CURRENT ROW AND 2 FOLLOWING
-- SHORT FORM  - ROWS 2 FOLLOWING 

-- DEFAULT FRAME - UNBOUNDED PRECEDING AND CURRENT ROW 

SELECT 
OrderID,
OrderDate,
OrderStatus,
Sales,
SUM(Sales) OVER(PARTITION BY OrderStatus ORDER BY OrderDate) as Total_Sales
from Sales.Orders

-- there is default frame clause - in the window function - ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW

SELECT 
OrderID,
OrderDate,
OrderStatus,
Sales,
SUM(Sales) OVER(PARTITION BY OrderStatus ORDER BY OrderDate
ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) as Total_Sales
FROM Sales.Orders

-- same output   if we dont write the default case too

