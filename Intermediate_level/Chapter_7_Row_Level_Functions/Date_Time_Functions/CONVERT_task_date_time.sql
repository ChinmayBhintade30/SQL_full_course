/*
Convert the date- time into varchar datatype using - CONVERT () , and also convert it into USA standard format

*/

SELECT
CreationTime,
CONVERT(varchar, CreationTime, 32) As [USA Std. Style:32]
From Sales.Orders