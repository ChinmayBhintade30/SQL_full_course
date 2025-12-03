-- This file has all comparison operators used for filtering the data
-- = equal to operator - checks if two values are equal or not

-- retrieve all customers having germany as country

select * from customers
where country = 'Germany'



/*
=! not equals to operator - checks if two values are not equal to 

task - Retrieve all customers who are nor from germany

*/

select * from customers
where country != 'Germany'



/*
> - greater than operator

*/
-- retrieve all the customers with score greater than 500 

-- use > greater than operator

select * from customers
where score > 500


/*
>= greater than equal to operator

- used to check one value is greater than or equal to another value

task - retrieve all customers with a score of 500 or more


*/

select * from customers
where score >= 500



/*
< - less than operator
used to check if one value is less than another value

task - retrieve all the customers with score less than 500


*/

select * from customers
where score < 500


/*
<= - less than equal to operator
	- Check if the value is less than or equal to the another value
Task - retrieve all customers with score less than or equal to 500

*/
select * from customers
where score <= 500



