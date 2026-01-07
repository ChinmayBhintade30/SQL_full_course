/*
	- Returns the last day of the month
	- It only changes the 'day' part of the date part
	- It applies at -> the day and changes it to last date of the MONTH
For.eg -->2025 - 08 - 20


EOMONTH() applied - it changes the day to 31st of august

2025-08-31



*/
SELECT
OrderID,
CreationTime,
EOMONTH(CreationTime),
CAST(DATETRUNC(month,CreationTime) as DATE)StartOfMOnth
from sales.Orders
