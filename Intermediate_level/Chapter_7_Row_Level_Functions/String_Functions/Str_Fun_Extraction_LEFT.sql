/*
LEFT('value',no of characters) --> returns the number of characters from that value as many as you mention

- used mostly for starting/first positions or left side of the word

SQL task - Retrieve the first 2 characters of the each first_name of the column
value can be column name also without '' qoutes
*/

SELECT
first_name,
LEFT(TRIM(first_name),2) AS first_2_char
from customers
-- you can see that - John name is returned with only 'j' as it has a whitespace before the string character
-- which is also considered in the characters so - it counts the whitespace--> 1 and then J as 2nd character


