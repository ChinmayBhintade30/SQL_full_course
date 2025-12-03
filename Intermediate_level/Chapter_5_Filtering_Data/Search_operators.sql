
-- Like operators - using % or _ underscore operator to get the result
/*
	LIKE operator -->
	
	- Search for a pattern in the text
	- We use 2 special character to a build a pattern
	- % - is using anything which is no character at all , or only one character or many character
	- % - can be anything like number , character , etc in many or single ways
	- And if you use _ (underscore)  - it tells exactly one thing / one character



		- In the %in pattern the in character also satisifes as % is also anything /nothing/ or something

%r% - pattern

Maria
Peter
Ragun
	R
Alice x


*/
-- Task - find the customers whose first name starts with 'M' 
-- first_name is col name

SELECT * from customers
where first_name LIKE 'M%'


-- task 3 find the customers whose first_name ends with 'n'

SELECT * from customers
where first_name LIKE '%n'

-- Task 3 - find all customers whose first_name contains 'r' anywhere between the word or at any position in the word

SELECT * from customers
where first_name LIKE '%r%'


/*
find the all customers whose first_name has 'r' in the third position
*/

SELECT * from customers
where first_name LIKE '__r%'
