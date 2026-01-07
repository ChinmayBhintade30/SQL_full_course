/*
Date and Time Functions -->

Part extraction -->
It includes --> many functions


DAY() , MONTH() , YEAR() - are the 3 functions - which can return the day , month and the year
using function 

DAY(date)
MONTH(date)
YEAR(date) 
-- > date includes the actual date - column name in the argument list 
date - 2025-08-20
*/
SELECT 
OrderID,
CreationTime,
YEAR(CreationTime) AS year,
MONTH(CreationTime) AS month,
DAY(CreationTime) AS day
from sales.Orders