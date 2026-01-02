/*
UPPER () - function is used to convert any string into full uppercase characters

SQL task - convery the first_name column from the MyDatabase table - into uppercase


*/
-- columns like first_name and country are included in query as exmaple to show some table content

SELECT 
first_name,
country,
UPPER(first_name) AS upp_name
from customers
