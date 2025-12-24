/*
Rule 2 --> that the number of columns in both the table - while SET operation should be 
same and not different
SQL task - apply union operator to table customers and employees by taking the FirstName and the LastName
*/
select 
FirstName,
LastName
from Sales.Customers

UNION

select 
FirstName,
LastName
from Sales.Employees


