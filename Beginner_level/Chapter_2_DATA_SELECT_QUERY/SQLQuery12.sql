-- simple task - find the total score and total number of customers in the country

select 
	country,
	SUM(score) as total_score,
	COUNT(id) as total_customers
from customers
group by country