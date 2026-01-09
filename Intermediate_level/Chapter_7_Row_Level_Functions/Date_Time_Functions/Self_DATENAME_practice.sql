SELECT 
OrderID,
CreationTime,
DATENAME( quarter, CreationTime) as Quarter_number, -- returns the numeric value that which quarter is going on
DATENAME(week , CreationTime) as week_number, -- return the week number - numeric value of the which week is going on
DATENAME(day, CreationTime) as day_date,
DATENAME(year , CreationTime) as year_number,
DATENAME(month, CreationTime) as month_name,
DATENAME(weekday, CreationTime) as weeek_day_name
from Sales.Orders