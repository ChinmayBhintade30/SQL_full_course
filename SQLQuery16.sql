-- get the two most recent orders

select TOP 2 *
from orders
order by order_date DESC
-- it sorts the data into DESC order of the date
