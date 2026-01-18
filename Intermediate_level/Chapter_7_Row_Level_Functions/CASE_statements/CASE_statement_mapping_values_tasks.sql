/*
mapping values --> application or use of CASE statement

SQL task -->
Retrieve employee details with gender displayed as full text
*/
SELECT
EmployeeID,
FirstName, 
LastName,
Gender,
CASE
	WHEN Gender = 'F' THEN 'Female'
	WHEN Gender = 'M' THEN 'Male'
	ELSE 'Not Available'
END  AS  GenderFullText
FROM Sales.Employees


/*

SQL task --> retrieve customer details / Employee details with abbreviated country code
*/

Select 
	CustomerID,
	FirstName,
	LastName,
	Country,
	CASE
		WHEN Country = 'Germany' THEN 'Ger'
		WHEN Country = 'USA' THEN 'US'
		ELSE 'NA'
	END AS country_code_abbr,
	-- 2nd case - after the END statement and rename - give commna (,)
	 
	CASE Country
		WHEN 'Germany' THEN 'DE'
		WHEN 'USA' THEN 'US'
		ELSE 'n/a'
	END AS Countryabbr2
from Sales.Customers;





/*
CASE statement usecase - Quick form 

- using the column name with CASE keyword - so that only the values in the columns
can be compared - and evaluated

*/


