/*
Date and Time values -  3 different sources to query the dates in SQL

1. Date column from a table
- returns the columns in the table like orderID , ShipDate , OrderDate , and CreationTime 
which includes the date and time values inside it


*/
SELECT
OrderID,
CreationTime
from sales.Orders 

/*

2. Hardcoded Constant String value
- it is a hardcoded date string  
- in a '' qoute a string can be hardcoded a date that will be static for all rows and name that column as 'Hardcoded'

*/

SELECT 
OrderID,
CreationTime,
'2025-08-20' AS hardcoded
from sales.Orders



/*
GETDATE() - we can get the values os it returns the date and time at that current moment of the
query executing

returns the current query date and time --> GETDATE() -> doesnot include any argument in it

3.GETDATE()  
*/
SELECT
OrderID,
CreationTime,
GETDATE() Today
from sales.Orders