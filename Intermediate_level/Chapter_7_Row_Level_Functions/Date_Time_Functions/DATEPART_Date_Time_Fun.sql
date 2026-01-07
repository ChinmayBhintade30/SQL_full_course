/*
DATEPART() - used to return the specific part of the date
used a specific part of date as number/integer/date
DATEPART (part , date)
part - specifies which part you want to return - for .eg mm ,dd, yyyy -> month , day , year etc
date - includes the whole date for e.g 2025-08-20

*/
SELECT 
OrderID,
CreationTime,
DATEPART(year, CreationTime) Year_dp,
DATEPART(month, CreationTime) Month_dp,
DATEPART(day, CreationTime) Day_dp,
DATEPART(hour, CreationTime) Hour_dp,
DATEPART(quarter, CreationTime) Quarter_dp,
DATEPART(week, CreationTime) Week_dp,
YEAR(CreationTime) year,
MONTH(CreationTime) Month,
DAY(CreationTime) Day
from sales.Orders

-- the weekday comes from the Date from which week it is from

/*
the week - represents the that the date in the Creation time is from which week 


for e.g - 2025-01-01 --> represents that this is from 1st week

*/