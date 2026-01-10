/*
CAST () - converts the value to specified datatype 
means - there is any value and specified -> datatype - which tells that this is the datatype to be converted 


*/

SELECT 
CAST('123' AS INT) AS [string to INT],
CAST(123 AS Varchar ) As [int to varchar],
CAST('2025-03-20' AS date) AS [string to date],
CAST('2025-08-20' AS datetime2) AS [Date to Datetime],
-- task convert the creation time into date using the CAST function

CAST(CreationTime AS date) AS [DateTime to Date]
from sales.Orders