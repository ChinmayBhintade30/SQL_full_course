/*
SQL task - sort the customers from lowest to highest scores - using NULLs appearing last

*/

Select
CustomerID,
Score,
--COALESCE(Score, 99999),
CASE WHEN Score IS NULL THEN 1 ELSE 0 END As flag, Score
from Sales.Customers
Order BY  COALESCE(Score, 99999)