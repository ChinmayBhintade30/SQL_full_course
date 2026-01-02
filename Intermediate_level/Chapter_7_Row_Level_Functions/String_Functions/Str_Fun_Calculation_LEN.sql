/*
LEN() - function used to count the number of characters or returns the length of the characters

LEN () function can be used for any datatypes like number , Date and Time, strings


*/

SELECT 
first_name,
LEN(first_name) AS len_name
FROM customers

