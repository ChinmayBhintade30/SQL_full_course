/*
SQl task --> find the total sales for  each product 
and additionally  provide details such orderid and orderdate
*/
SELECT
OrderID,
OrderDate,
ProductID,
SUM(Sales) as Total_Sales
from Sales.Orders
GROUP BY OrderID,
		OrderDate,
		ProductID




-- using the window function - using OVER()  and  PARTITION BY  ProductID as we have 
/*
we have 4 products - with id 101 , 102 , 104 and 105 --> so we should have 
total sales using over () for this 4 productids but the total sales using SUM should be
applied to all the ids - the SUM() should be printed to next of every ProductID

*/

Select
	OrderID,
	OrderDate,
	ProductID,
	SUM(sales) OVER(PARTITION  BY PRODUCTID)  TotalSalesByProducts 
from Sales.Orders

