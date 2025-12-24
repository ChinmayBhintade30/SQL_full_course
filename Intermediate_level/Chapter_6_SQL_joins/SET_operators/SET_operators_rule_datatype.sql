/*
rule no 3 for the set operators --> the datatypes of column in each query must be compatible or 
the datatype which is used to columns in the tables must match for 
joining the rows using the SET operators

Rule no 3 --> datatype must be same

*/
select 
CustomerID,
LastName
from Sales.Customers

UNION

select 
FirstName,
LastName
from
Sales.Employees