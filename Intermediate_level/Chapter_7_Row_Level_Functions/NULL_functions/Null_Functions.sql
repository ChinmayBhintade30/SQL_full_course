
/*
NULLIF() USECASE -->
Division By Zero -->
- Preventing the error of dividing by zero
SQL task --> 
Find the sales price for each order by dividing the sales by the quantity
- Dividing the sales by quantity
Sales / Quantity = sales price per order
*/
Select 
OrderID,
Sales,
Quantity,
Sales / NULLIF(Quantity,0) as Price 
from Sales.Orders

-- here NULLIF can be used and get a NULL - havin a Null is better than getting an error








-- IS NULL() and IS not NULL

-- used a flag or boolean check for the value

--IS NULL 
-- returns true if the value IS NULL otherwise it returns false

-- IS NOT NULL -->
--returns true if the value is NOT NULL , otherwise it returns false (if null)


-- SQL task ->Identify the customers who have no scores - means NULL score


Select 
*
from Sales.Customers
Where Score IS NULL

-- score returns the  NULL value as i raised the flag for ISNULL and ISNOT NULL 

--  USE IS NOT ROLL ahe

Select 
*
from Sales.Customers
Where Score IS NOT NULL 



-- Application use case of ISNUL - anti joins


 --SQL task
 --list all details of the customers who have not placed any orders

 -- left join the customers and orders table
 -- using the key customerID and also mention the OrderId - to find if the order is 
 -- NULl for any customer




 Select
 c.*,
 o.OrderID
 from Sales.Customers as c
 LEFT JOIN Sales.Orders as o
 ON c.CustomerID = o.CustomerID
 where o.CustomerID IS NULL



 -- difference between NULL vs Empty string Vs Blank space


 With  Orders AS(
 Select 1 Id, 'A' category union 
 Select 2 , NULL UNION
 Select 3, '' UNION 
 Select 4, '  ' 
 )
 Select 
 * ,
 DATALENGTH(Category) as category_len
 from Orders 




 -- Data policy --> Set of rules that defines how data should be handled

 /*
 Handling NULLs - Data Policies -->
 */

 -- #1. only use NULLs  and empty strings but avoid  using blank spaces
/*
	- Always avoid the blank spaces - they are the very wrong if used in database or tables
	- Don’t use blank spaces
	- Get rid off all blank spaces

	"TRIM()" --> trim function  removes the unwanted leading and trailing spaces from a string

/*
	
Use NULLIF() to convert the empty spaces to NULL
Use trim for category  and ''

NULLIF(TRIM(Category),'' ) Policy2
*/

*/
 With  Orders AS(
 Select 1 Id, 'A' Category union 
 Select 2 , NULL UNION
 Select 3, '' UNION 
 Select 4, '  ' 
 )
 Select 
 * ,
 DATALENGTH(Category)Category_len,
 DATALENGTH(TRIM(Category))Policy1,
 NULLIF(TRIM(Category),'') Policy2,
 COALESCE(NULLIF(TRIM(Category),''), 'unknown') policy3
 from Orders  
 

 /*

 #3. Use default value in 'unknown' in string - means now avoid using all 3 formats that is 
NULL , blank space and empty string


	- Use COALESCE() function to replace the NULL with 'unknown' static value

*/

/*
	- But we have to also replace the 3 and 4 id to unknown - 
	- So first apply TRIM to category and '' and remove spaces
	- Then apply NULLIF - to blank space - to replace it with NULL
And then final Apply COALESCE() to replace the NULL by static string value
*/

