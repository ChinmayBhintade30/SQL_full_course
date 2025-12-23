--SQL task --> get all the customers who haven't placed in order

/*
LEFT ANTI JOIN --> used to return the rows from the left table which are unmatched with the 
right side table

means the applying 'where' clause filter after the left join --> to extract the unmatched rows from the right side table

LEFT ANTI JOIN --> returns the rows from the left table which has no match with the right table

We dont have specific keyword for left anti join so we use left join and then 'where' clause with it

means we will first apply the left join normally which wil extract the left side A table all elements and the matching elements from  the B table --> and then 
	- Using the 'Where' clause --> we can just apply the filter of B.key = Null means that rows where the B.key is Null must be so the elements will not be included and only the A table unmatched elements will be displayed
*/



select * from 
customers AS c
left join orders AS o
ON c.id = o.customer_id
--we used the o.customer_id key from the right side table to filter the data which is customer not matching with the orders 
where o.customer_id IS NULL



