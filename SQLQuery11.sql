-- find the total scores for each country 


Select 
	country,
	first_name,
	SUM(score) AS total_score

from customers
group by country,first_name
