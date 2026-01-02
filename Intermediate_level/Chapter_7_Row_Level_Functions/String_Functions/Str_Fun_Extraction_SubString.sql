/*
SUBSTRING() --> returns some part of a string a specified position

SQL task - retrieve a list of customers' first_name after removing the first character

*/


SELECT
first_name,
SUBSTRING(TRIM(first_name), 2, LEN(first_name)) AS sub_name
from customers

