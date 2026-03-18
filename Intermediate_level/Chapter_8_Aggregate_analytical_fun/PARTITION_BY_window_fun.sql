-- SQL task - Find the total sales across all the orders  
-- additionally provide details such as order id and order date

-- As the questions itself implies the Finding the total sales - which is aggregating the values
-- and providing the details of that we cannot use GROUP BY clauseu
-- we have to use the Window functions

SELECT
OrderID,
OrderDate,
--using window functions
SUM(Sales) OVER() AS TotalSales

-- here we dont have to use the PARTITION BY - as there is no need to do any partition
-- means no need of creating any window groups of the whole Sales 
FROM Sales.Orders


/*
SQL task - find the Total sales for each product
Additionally provide the details such has OrderID, and OrderDateu
*/
-- since it has asked total sales for each product - we have to divide
-- the whole product list into all products windows using PARTITION BY 
Select 
OrderID, 
OrderDate,
ProductID,
OrderStatus,
Sales,
SUM(Sales) OVER() TotalSales,
SUM(Sales) OVER(PARTITION BY ProductID) TotalSalesByProducts,
SUM(Sales) OVER(PARTITION BY ProductID, OrderStatus) SalesByProductsAndStatus
FROM Sales.Orders