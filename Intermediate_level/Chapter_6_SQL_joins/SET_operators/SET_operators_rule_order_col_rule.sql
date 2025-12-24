/*


Rule no 4 --> The order or sequence of the column in any table should be the same 
the order matters in the table
*/
select 
Lastname,
CustomerID
from Sales.Customers

UNION

select 
EmployeeID,
LastName
from Sales.Employees

-- this generates an error of converting the varchar into int 

-- as we can see the Lastname is on first_place and the EmployeeId matches it in the 
-- Employees table 

