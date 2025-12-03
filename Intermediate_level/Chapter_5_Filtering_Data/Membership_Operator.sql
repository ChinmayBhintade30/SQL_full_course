/*
IN 
NOT IN
	- It checks whether the value exists in a list - whether it is in the list or not 
	- Is the value a member of your list

Task -	Retrieve all customers from either Germany Or USA


*/

-- using OR operator for where clause

SELECT * FROM customers
where country = 'Germany' OR country = 'USA'


SELECT * from customers
where country IN ('Germany' ,'USA')
