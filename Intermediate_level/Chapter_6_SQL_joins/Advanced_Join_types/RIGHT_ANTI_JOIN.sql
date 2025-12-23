/*
RIGHT ANTI join - used to return the rows from the right side table - which do not match with the left side table

returns the unmatching rows from the right side table 

- used the right join basic and then apply filter using the where clause - A.key is NULL to get the right anti join

TASK - get all the orders with no match with the customers 

- return the orders table in which the orders do not match with the customers

- use the primary key of the left side table - for the filtering

*/

Select * from 
customers AS c -- left side table
RIGHT JOIN orders AS o -- right side table
ON c.id  = o.customer_id
-- as we have to use the key from the left side table which is 

-- the first 3 orders are okay - have match with the customers but the 4th customer and order doesnot match 
-- we have to return the 4th order which is NULL with respect to the customer 

where c.id IS NULL




-- SQL task - same task return the orders without matching with the customer by using "leftjoin" 

-- change the sequence of the table and also use the keyword - LEFT JOIN


select * from 
orders AS o
LEFT JOIN customers AS c
ON o.customer_id = c.id


-- apply where filter now use the c.id key as we have to filter the unmatching data from orders to customers

-- "WHERE' clause - using c.id 
-- switch the A and the B table using left join and use A table key as 'where' clause filter 


where c.id IS NULL
