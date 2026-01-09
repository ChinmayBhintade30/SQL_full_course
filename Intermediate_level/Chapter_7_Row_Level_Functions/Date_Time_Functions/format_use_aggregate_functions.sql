/*
	- Before aggregting the data - we should apply formatting 

	- For e.g formatting the standard format of date - into abbreviation of month name(sept, aug) and representing 
	- The year in 2 digit short form

SQL task -  apply format function to change the format of the date and - apply aggregation using count(*) function and 
group by  clause


*/
SELECT
FORMAT(OrderDate,'MMM yy') OrderDate,
COUNT(*)
From Sales.Orders
group by Format(OrderDate ,'MMM yy')