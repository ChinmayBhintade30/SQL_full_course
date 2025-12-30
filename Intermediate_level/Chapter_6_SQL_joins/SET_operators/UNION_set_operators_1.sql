/*
working on the sales db

Combine the data from Employees and customers into one table

UNION - return the distinct data or rows from the tables that is all (everything from the taables)
same like the Full join just -->  it removes the duplicate values from the table

- as we know this is joining of the rows so -->  a same row and name can be returned twice 

- so duplicate values are been removed


*/

-- Combine the data from Employees and customers into one table from the sales database
SELECT
FirstName,
LastName
from Sales.Customers

UNION

SELECT
FirstName,
LastName
from Sales.Employees

-- kevin and Mary are the one's who are repeated for twice but they are included only for once in the
-- output as first name and the lastname

-- why this happend because --> the rows of the tables are not varying of different like joining by the column

-- so FirstName and the LastName are there in the output delay

