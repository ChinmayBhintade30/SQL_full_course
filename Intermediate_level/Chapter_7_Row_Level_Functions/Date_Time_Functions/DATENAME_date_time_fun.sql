/*
	c. DATENAME() Function -->

	- This part is specific for the name of the datepart
	- DATENAME() function is similar to the DATEPART() function but the difference is - that 
	- DATENAME() returns the 'name' of the datepart , not the datepart in 'INT'
	- For e.g we tried to return the datepart - as 'INT' like 8th month  as 08 

- Instead of 08 - we get 'August' and 
	- Instead of day - from 1 to 31 -->  for e.g 'Wednesday'


	- When we do DATENAME() as function and extract month - we get "august" for the month - 08
	- We get a 'string' for return value as function.


SQL task ->

*/

SELECT 
OrderID,
CreationTime,
--DATENAME () part 
DATENAME(month, CreationTime) Month_dp,
-- to return the name of the weekday of the date we can use weekday in DATENAME()
DATENAME(weekday, CreationTime) weekday_dn,
DATENAME(day , CreationTime) day_date_name
from sales.Orders
 