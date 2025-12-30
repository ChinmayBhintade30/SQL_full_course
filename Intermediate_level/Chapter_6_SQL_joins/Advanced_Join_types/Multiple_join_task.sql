/*
SQL task --> Using Sales Db , retrieve list of all orders , along with the related customer , product ,
and employee details. For each order display 
ORDER ID 
customer name
Product name 
sales
price
sales person's name

*/

select 
-- these are the 2 columns required from the table orders to be displayed

o.OrderID,
o.Sales,
c.FirstName AS CustomerFirstName,
c.LastName AS CustomerLastName,
p.Product AS ProdcutName,
p.Price,
e.FirstName AS EmployeeFirstName,
e.LastName AS EmployeeLastNameu
from sales.Orders As o

 -- to join the customers table we will use the left join and use the customerID key for both o.customerID = c.custoemrID

LEFT JOIN sales.Customers AS c
ON o.CustomerID = c.CustomerID -- as the tables are now connected we can get the columns from the customers table


--left join the product table with the orders 
LEFT JOIN sales.Products AS p
ON o.ProductID = p.ProductID

-- we joined the tables using the productID to the main table sales as we need all the data from the sales

LEFT JOIN sales.Employees AS e
ON e.EmployeeID = o.SalesPersonID

