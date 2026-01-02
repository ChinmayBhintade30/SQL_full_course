--  Concatenate first name and country  into one column

--Show a list of customers' first names together with their country in one column.

/*
String Functions - Manipulation - CONCAT() 

*/

SELECT 
first_name,
country,
CONCAT(first_name,' ',country) AS name_country
FROM customers

-- first check - first_name and the country --> sql query -> in two seperate columns

-- here we have to CONCAT(first_name, country) --> and give a name ' using AS name_country

-- there is a new column - named name_country 

