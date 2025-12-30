/*	SQL task --> Order are stored in separate tables(orders and ordersArchive)
Combine all orders data into one table and generate report without duplicates

*/

/*
SQL - combine information - using the UNION operator for 
it combines multiple tables into a single big table first and then applies the SQL query for the table 
it generates the report - which helps to get the consistent and most correct data 


- when you update the SQL query - the data from the tables automatically gets updated as they are combined to 
form a single data set or table
-- UNION is  used to demonstrate the combining of the file


*/
SELECT 
'Orders' as SourceTable
,[OrderID]
,[ProductID]
,[CustomerID]
,[SalesPersonID]
,[OrderDate]
,[ShipDate]
,[OrderStatus]
,[ShipAddress]
,[BillAddress]
,[Quantity]
,[Sales]
,[CreationTime]
from Sales.Orders

UNION

Select 
'OrdersArchive' as SourceTable
,[OrderID]
,[ProductID]
,[CustomerID]
,[SalesPersonID]
,[OrderDate]
,[ShipDate]
,[OrderStatus]
,[ShipAddress]
,[BillAddress]
,[Quantity]
,[Sales]
,[CreationTime]
from Sales.OrdersArchive
order by OrderID


--get the all column names using top 1000 rows in Sales.DB --> and then use it instead of *

-- sort the data by OrderID so that you can clearly see the difference between the every row that
-- it originates from orders and OrderArchive 
--'Orders/OrdersArchive' is used in the query for describing the row that it comes from the specifc table

