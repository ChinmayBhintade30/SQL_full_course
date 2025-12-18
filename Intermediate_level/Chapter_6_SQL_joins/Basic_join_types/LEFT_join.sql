/*
Left join --> it is used to include all the rows from the left table and only matching tables from
the right table 

LEFT join -- here the sequence of the table in the query matter as we need the rows from the inner join

so that table should be first mentioned which rows we want to in output


*/

select 
	c.id,
	c.first_name,
	o.order_id,
	o.sales
from customers AS c
LEFT JOIN orders AS o
ON c.id = o.customer_id

/*
here all the id and data in the customers from customer table --> are included 
all rows from the left side table - customers with name are included 

BUT --> the order_id and sales in the orders table dont match with the left join by using ids
so It displays the NULL value inside the sales and order_id



*/