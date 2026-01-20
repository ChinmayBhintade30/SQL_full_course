/*
SQl task --> analyse the score column from the customers table in the Mydatabase
use all 5 aggregate function - COUNT(), SUM() , MAX() , MIN() , AVG()
*/
-- find the how many customers 
-- find the total sales using SUM()
-- find the average score of customers using AVG()
-- find the highest score using MAX()
-- find the lowest score using MAX()



SELECT 
COUNT(*) AS number_of_scores,
SUM(score) AS sum_of_score,
AVG(score) AS avg_of_score,
MAX(score) AS highest_score,
MIN(score) AS lowest_score
FROM Customers