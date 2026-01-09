/*
FORMAT() - returns the or converts the format of the value from one form to another
	- It formats a date or time value

SYNTAX -->
FORMAT(value , format [,culture])



SQL task --> Format the 'CreationTime' column value in the sales.Orders


	1. To extract the day information - using 'dd' format for CreationTime

*/
SELECT
OrderID,
CreationTime,
FORMAT(CreationTime, 'dd') dd
From Sales.Orders

