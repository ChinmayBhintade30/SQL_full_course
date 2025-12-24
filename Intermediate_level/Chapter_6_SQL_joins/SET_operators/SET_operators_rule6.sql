/*
Rule 6 - even if the all rules are met and condition are satisfies then too the values inside the 
tables can be incorrect

- means the column selection can be wrong - for exmaple just changing the position of the first name and the last name 
in the table - although they have the same datatype varchar , same number of columns still it is a human error


*/

select 
FirstName,
LastName
from Sales.Customers

UNION

select 
LastName,
FirstName
from Sales.Employees