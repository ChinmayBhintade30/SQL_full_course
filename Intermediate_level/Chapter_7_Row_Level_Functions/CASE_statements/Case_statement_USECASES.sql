/*Handling Nulls -> case statement  
SQL task --> find the average Scores of customers and treat NULLs as 0
And provide additional details such  CustomerID  and LastName
*/
SELECT
CustomerID,
LastName,
Score,	
CASE
	WHEN Score IS NULL THEN 0
	ELSE Score
END  ScoreClean,
AVG(CASE 
		WHEN  Score IS NULL	 THEN 0
		ELSE Score
	END) OVER() AvgCustomerClean,
AVG(Score) Over() AvgCustomerClean
FROM Sales.Customers

-- but as per the null handling rules and concept - it adds 4 values and divides by 4
-- we have to handle the null - and make it value --> 0 so that 
-- it cane become - 5 values sum divides by 5


/*
SQL task -->
Count how many times each customer has made  an order with sales greater than 30

*/

Select
OrderID,
CustomerID,
Sales,
CASE
	WHEN Sales > 30 THEN 1
	ELSE 0
END SalesFlag
From Sales.Orders
Order BY CustomerID



-- using group by - clause
-- and SUM() function -- for whole case statement 

SELECT
CustomerID,
SUM(CASE 
		WHEN Sales > 30 THEN 1
		ELSE 0
	END )TotalOrdersHighSales,
	COUNT(*) TotalOrders
FROM Sales.Orders
GROUP BY CustomerID