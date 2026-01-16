
/*
NULLIF() USECASE -->
Division By Zero -->
- Preventing the error of dividing by zero
SQL task --> 
Find the sales price for each order by dividing the sales by the quantity
- Dividing the sales by quantity
Sales / Quantity = sales price per order
*/
Select 
OrderID,
Sales,
Quantity
from Sales.Orders