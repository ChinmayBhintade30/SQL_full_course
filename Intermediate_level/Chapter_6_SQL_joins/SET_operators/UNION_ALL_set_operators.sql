/*

SQL TASK --> 

Combine the data from the Employees and the Customers into one table, including Duplicates 
(means including UNION ALL) set operator

*/

/*
we cannot use the union we have to use the UNION All - which also includes the duplicate values 
including all the rows
u*/

SELECT 
FirstName,
LastName
from 
Sales.Employees

UNION ALL

SELECT 
FirstName,
LastName
from 
Sales.Customers

