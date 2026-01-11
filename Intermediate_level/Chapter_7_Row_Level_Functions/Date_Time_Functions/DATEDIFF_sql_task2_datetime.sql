/*
SQL task - find the average shipping duration  in days for each month 
using DATEDIFF()
 

*/
Select
OrderID,
OrderDate,
ShipDate,
DATEDIFF(day , OrderDate, ShipDate) Day2Ship
from Sales.Orders
 
SELECT 
MONTH(OrderDate) AS OrderDate,
AVG(DATEDIFF(day , OrderDate, ShipDate)) Avgship
from Sales.Orders
Group By MONTH(OrderDate)