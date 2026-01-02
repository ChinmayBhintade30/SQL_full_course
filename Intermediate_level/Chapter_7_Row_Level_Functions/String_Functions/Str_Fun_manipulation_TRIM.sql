/*
TRIM() - function that removes all the leading and the trailing spaces in the string

- removes all the spaces from the string 


SQL task - Find the Customers whose first_name contains leading and trailing spaces

*/

SELECT 
first_name,
LEN(first_name) AS len_name,
LEN(TRIM(first_name)) AS len_Trim_name,
len(first_name) - len(TRIM(first_name)) flag
from customers
--where first_name != TRIM(first_name)


