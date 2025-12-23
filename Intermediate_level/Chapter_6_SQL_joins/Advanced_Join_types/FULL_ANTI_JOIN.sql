/*

Full anti join - return the rows that deosnot match with any of the either table

combine the where condition of the left anti join and the right anti join --> which will give the 
full anti join


	SELECT * 
	From A
	Full join B 
	ON A.key = B.key
	Where
	
	(combine both the condition of A.key and B.key IS NULL) 
	
	A.key IS NULL
	OR (or operator) 
	B.key IS NULL


	SQL TASK - find the customers without orders and orders without the customers


*/