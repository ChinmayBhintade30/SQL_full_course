/*
SQL task --> 

Rank each order based on their sales from Highest to Lowest
Additionally Provide details such as Orderid and Orderdate

*/
Select 
OrderID,
OrderDate,
Sales, 

--use RANK() function to arrange the orders from sales highest to lowest
RANK() OVER(ORDER BY Sales DESC) RankSales

--OVER() stands for window function RANK() and ORDER BY clause is used to arrange the orders in DESC order

from Sales.Orders


	
	-- Here we have used the RANK() function which is a window function - followed by OVER() function and 
	-- ORDER BY clause --> using the Sales in descending order 

	-- we get the rank of the Orders based on the sales of the Orders 

	-- Also we can get the rank of the orders in ASC order ascending order


Select
	OrderID,
	OrderDate,
	Sales, 
	RANK() OVER(ORDER BY Sales ASC) AS Rank_Sales
From Sales.Orders

