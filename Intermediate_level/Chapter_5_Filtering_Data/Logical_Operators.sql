/*
AND operator - used when only both the condition are true

Retrieve all the customers who are from USA  and have  a score greater than 500


*/

select * from customers
where country = 'USA' AND score > 500



/*
OR operator - atleast one condition must be true 
task Retrieve all customers who are either from USA  or have a score greater than 500

*/

select * from customers
where country = 'USA' OR score > 500


/*
Task - Retrieve all the customers with a score NOT less than 500

NOT - operator - reverses the current result and the query

*/

select * from customers
where score >= 500 
-- this is the opposite condition of the not less than 500 which is >= 500

-- we can use NOT operator before score

SELECT * from customers
where NOT score < 500



