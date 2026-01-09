/*
Show all the orders that were placed during the month of the February

Part extraction use case - Filtering

*/
Select * 
from Sales.Orders
Where MONTH(OrderDate) = 2
