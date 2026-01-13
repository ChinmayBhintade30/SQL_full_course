/*
Display the full name of customers in a single field by merging 
 their first and the last name
 and add 10 bonus points to each customers score
*/
Select
CustomerID,
FirstName,
LastName,
COALESCE(FirstName, '') LastName2,
FirstName + ' ' + LastName AS FULLNAME,
Score
from Sales.Customers