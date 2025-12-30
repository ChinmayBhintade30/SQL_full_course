/*
FULl join --> returns all rows from the both the tables

here order of the tables doesnt matters 
eveerything has to be included from the left side table as well as the right side table

*/

-- task --> return all the customers and the orders even without if there is no match


Select 
	c.id,
	c.first_name,
	o.order_id,
	o.sales
from customers AS c
FULL join orders AS o
ON c.id = o.customer_id

-- here all the rows from the left side table and the right side table are included u
/*
here the all names and the ids are included and also the order_id and sales from the orders table are included 
NULL is present in the place with no matching data


*/