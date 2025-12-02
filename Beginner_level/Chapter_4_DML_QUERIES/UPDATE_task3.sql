--Update all the customers with a NULL Score by setting	their score  to 0

-- use IS NULL in the where condition instead of id 

UPDATE customers
SET score = 0
where score is NULL

select * from customers

