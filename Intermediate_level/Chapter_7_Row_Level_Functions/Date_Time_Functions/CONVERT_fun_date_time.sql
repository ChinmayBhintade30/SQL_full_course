/*
CONVERT () - function --> returns the value or used to convert the datatype of date time to another

*/
SELECT 
Convert (INT , '123') as [String to Int Convert ],
Convert (date, '2025-08-20') AS [string to Date convert],
CreationTime,
CONVERT(DATE, CreationTime) AS [DateTime to Date Convert]
FROM Sales.Orders