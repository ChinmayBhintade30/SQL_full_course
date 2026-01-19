/*

Handling Nulls -> case statement  
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
		WHEN Score IS NULL THEN 0
		ELSE Score
	END ScoreClean) OVER() AvgCustomerClean,
AVG(Score) OVER() AvgCustomer
FROM Sales.Customers

-- but as per the null handling rules and concept - it adds 4 values and divides by 4
-- we have to handle the null - and make it value --> 0 so that 
-- it cane become - 5 values sum divides by 5
 

