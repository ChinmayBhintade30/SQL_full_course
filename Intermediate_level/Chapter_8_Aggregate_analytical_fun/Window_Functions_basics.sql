/*
Window functions and GROUP BY funtions - similar to aggregate the values

but - 
has difference - in granularity 
GROUP  BY - simple aggregations , simple data analysis , and only common aggregate functions
different granularity , 

WINDOW functions --> same granularity, Advanced data analysis , more function like
Aggregate , rank , and Analytical functions


*/

-- SQL task --> find the total sales across all the orders

SELECT
SUM(Sales) AS total_sales
FROM Sales.Orders