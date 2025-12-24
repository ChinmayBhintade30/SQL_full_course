/*
	5. Rule 5 Column Aliases -->

	- The column names in the result set are determined by the column names specified in the first query

	- That means the first query is responsible for naming the columns in the output 
	- Directly simple terms it means that - the name of the columns reflected in the output are always the first query column names always


	- The first query is controlling the naming of the outward which is the outward column

*/
select 
CustomerID AS ID,
LastName AS LN
from Sales.Customers

UNION 

select
EmployeeID,
LastName
from Sales.Employees