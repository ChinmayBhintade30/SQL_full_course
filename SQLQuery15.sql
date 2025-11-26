--retrieve only 3 customers - using the TOP clause

-- top clause is used to return the number of rows we want - we can specify the number of rows we want
-- retrieve the top 3 customers with the highest scores
-- we can use order by - and sort the data in descending order first and the apply the top 3 rows filter
select TOP 3 *
from customers

select TOP 3*
from customers
order by score DESC


select TOP 2*
from customers
order by score ASC
