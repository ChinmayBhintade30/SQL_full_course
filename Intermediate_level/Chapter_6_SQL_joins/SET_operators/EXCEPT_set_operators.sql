/*
EXCEPT -- returns the employees or the data or unique rows in the first table that are 
not in the second table 

means - return the rows from the 1st query table which are not common in the second place table

SQL task --> return the find the Employees who are not customers at the same time

means return the employees who are not in the Customers table


*/

SELECT 
FirstName,
LastName
from Sales.Employees

EXCEPT 

SELECT 
FirstName,
LastName
from Sales.Customers

-- the EXCEPT is used to find the employees whcih are not in the customers table

-- means returning all the 3 names except 'kevin' and 'Mary' 