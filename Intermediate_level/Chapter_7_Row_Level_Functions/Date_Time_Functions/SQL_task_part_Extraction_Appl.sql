/*
SQL task --> 
how many orders were placed each year?

- applicaion for part extraction 



*/		
SELECT
YEAR(OrderDate),
COUNT(*)NrOfOrders
from Sales.Orders
GROUP BY YEAR(OrderDate)


--How many orders were placed each month  ?
-- what if we want -> month names instead of month numbers 


SELECT
DATENAME(Month,OrderDate) AS OrderDate,
COUNT(*) NrOfOrders
from Sales.Orders
GROUP BY DATENAME (month,OrderDate)

