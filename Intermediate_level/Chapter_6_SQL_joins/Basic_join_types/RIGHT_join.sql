/*
RIGHT JOIN -
return all rows from the right side table and only matched values from the left side table 
*/

select 
	c.id,
	c.first_name,
	o.order_id,
	o.sales
from
customers AS c
RIGHT JOIN orders AS o
ON c.id = o.customer_id


