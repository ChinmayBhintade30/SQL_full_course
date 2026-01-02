/*
RIGHT () --. returns the last characters mentioned in it
it returns the characters from the last side of the word or right side of the word - no.of characters mentioned in function

RIGHT (column_name /'value' , number of characters)

SQL task - retrieve the last 2 characters of the first_name each row

*/

SELECT 
first_name,
RIGHT(first_name,2) as last_2_char
from customers