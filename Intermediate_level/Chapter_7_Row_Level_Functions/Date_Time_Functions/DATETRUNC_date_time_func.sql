/*
DATETRUNC()

	- In case of date part -> day, month and year - it resets to '01' 
	- In case of time part - it resets to '00'
	
	
		- It truncates the dates to a specific part 
	- The Syntax for the DATETRUNC - is exactly for the same as DATENAME and DATEPART


DATETRUNC(part, date)



	- This function is used for just excluding the part 
	that which we don’t want to include or has extra details 
	and we want to limit our heirarchy upto certain level of the - date part




DATETRUNC() is used to set the limit / or trunc it to a certain  level
*/
--SQL task- trunc the creation time till minutes or upto minutes level

-- means - we have to remove the Seconds part and reset it to 00 as per the rule

 
SELECT
OrderID,
CreationTime,
--DATE TRUNC Examples
DATETRUNC(year,CreationTime) as year_date_trunc,
DATETRUNC(day, CreationTime) as day_date_trunc,
DATETRUNC(minute,CreationTime) as minute_date_trunc
from sales.Orders

