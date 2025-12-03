/*
Range - 'between' operator

use the keyword - 'BETWEEN'
Task - retrieve all customers whose score falls under the range between 100 and 500
*/

SELECT * FROM customers
WHERE score BETWEEN 100 AND 500

-- we can also use AND operator - to write the condition using >= and <=

SELECT * FROM customers
WHERE score >= 100 AND score <= 500
-- it gives the same result using comparison operators 

