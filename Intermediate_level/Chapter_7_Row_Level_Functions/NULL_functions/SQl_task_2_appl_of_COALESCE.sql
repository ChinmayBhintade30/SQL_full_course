/* Display the full name of customers in a single field by merging 
their first and the last name
and add 10 bonus points to each customers score
*/
Select
CustomerID,
FirstName,
LastName,
COALESCE(LastName, '') LastName2,
FirstName + ' ' + COALESCE(LastName,'') AS FULLNAME,
Score,
Score + 10 As ScoreWithBonus_1,
COALESCE(Score , 0) + 10 As ScoreWithBonus

from Sales.Customers
