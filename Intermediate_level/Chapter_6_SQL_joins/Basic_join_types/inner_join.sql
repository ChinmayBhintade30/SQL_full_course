/*
get all customers along  with their positions but only for customers who have placed an order

we have to join the customers table and the orders table - in which 
we have to only include the data from the database in which order from the customers data are present in orders


we have to use the innner join to combine the both tables together and combine the data
*/

SELECT * from 
customers


select * from orders


/*

from the observing the both table seperately order and customers I came to know that id is the one column 
by which it can be used a Table.key method to inner join the tables so that both the tables common data will be merged


*/
select 
	customers.id,
	customers.first_name,
	orders.order_id,
	orders.sales
from customers
inner join orders
ON customers.id = orders.customer_id

/*here we can also use only column names without the table name and the . operator
*/

-- here we can conclude that -> we have total 5 customers in the customers table but in in fact
-- there are only 3 customers whose orders are placed or taken 
-- 2 of the customer orders are not matching to the orders table

-- we just compared the id from customers and customer_id from the orders table - which combines the data

/*
we know that using the table_name with the . method with the column names is good practice of writing 
the query and also it avoid the confusion between in same column named which is column ambiguity

*/


-- to avoid the long table names we can also assign the short letter as the names of the tables 
select 
	c.id,
	c.first_name,
	o.order_id,
	o.sales
from customers AS c
inner join orders AS o
ON c.id = o.customer_id

