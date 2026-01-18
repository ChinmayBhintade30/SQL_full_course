/*
SQL task -->

Generate a report showing the total sales for each category
There will be 3 categories

- High: if the  sales is higher than 50
- Medium : if the sales is medium or between 21 and 50
- Low : if the sales is equal or lower than 20

Sort the result or category from lowest to highest
*/

Select
OrderID,
Sales,
CASE 
	WHEN Sales > 50 then 'High'
	WHEN Sales >20 then 'Medium'
	-- means - greater than 20 that is from 21 to 50 
	ELSE 'Low'
	-- show the value low --> when both condition not satisfy that is - sales <= 20
END Category
From Sales.Orders
-- for category - use CASE Statement - and when and then clause



/*
here the sales is 50 --> which is Medium - because for 'High' result the --> sales should be greater than 50

- For doing data aggregation -->
Use 'GROUP  BY' category for aggregating the data
--Sort the result or category from highest to lowest
*/
Select
Category,
SUM(Sales) AS TotalSales
FROM(
	SELECT
	OrderID,
	Sales,
	CASE 
		WHEN Sales > 50 THEN 'High'
		WHEN Sales > 20 THEN 'Medium'
		ELSE 'Low'
	END Category
	FROM Sales.Orders
)t
GROUP BY Category
ORDER BY TotalSales DESC
		