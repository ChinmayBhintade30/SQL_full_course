/*
Application of DATETRUNC()

if we want to count the Creation Time all orders and group by CreationTime

-- to aggregate the data at month level and count the number of orders in that month 
-- we can also aggregate the data at the highest that is year level - which shows only 1 row which shows
 -- that the 2025 year has all 10 orders in it

*/
Select
DATETRUNC(year,CreationTime) Creation,
count(*)
from sales.Orders
GROUP BY DATETRUNC(year,CreationTime)



Select 
DATETRUNC(month,CreationTime) Creation,
count(*)
from sales.Orders
GROUP BY DATETRUNC(month, CreationTime)

	



