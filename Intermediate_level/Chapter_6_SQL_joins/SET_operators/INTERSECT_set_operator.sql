/*
INTERSECT - returns the common rows from both the tables

- intersection - the common rows from both side table


*/


-- example -> Employees and customers return common rows

SELECT 
firstName,
LastName
FROM Sales.Employees

INTERSECT

SELECT 
FirstName,
LastName
FROM Sales.Customers
