/*
Time Gap Analysis
find the number of days between each order and the previous order 

*/


Select 
OrderID,
OrderDate as CurrentOrderDate,
LAG(OrderDate) OVER (Order By OrderDate) As PreviousOrderDate,
DATEDIFF(day, LAG(OrderDate) OVER (Order By OrderDate),OrderDate)
from Sales.Orders
-- this is the current orderdate 

 
