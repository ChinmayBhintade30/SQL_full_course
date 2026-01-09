-- SQL task 

/*
Show creation time -  using  the format 
DAY wed jan Q1 2025 12:34:56 PM


	- It starts with the word 'Day' then abbreviation of the day (wed) , then abbreviation of the month(jan)
	- Quarter - as 1 , then year - 2025 , and followed by time - HH:Min:Sec , and PM

*/
SELECT 
OrderID,
CreationTime,
'day ' + FORMAT(CreationTime,'ddd MMM') + 
' Q' + DATENAME(quarter, CreationTime) + ' ' + 
FORMAT(CreationTime, 'yyyy hh:mm:ss tt') AS customFormat -- yyyy hh:mm:ss(space) tt(time in AM/PM) 
From Sales.Orders

