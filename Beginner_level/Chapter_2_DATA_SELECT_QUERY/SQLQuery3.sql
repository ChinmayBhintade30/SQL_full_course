-- retrieve each customer's name , country and column
-- the commands or clauses like select and from and every clause can be in upper or lower caser 


SELECT
first_name,
	-- these are the actual col names in the customers table
	-- we use the colname directly to specify the col 

country,
score
from customers

-- do npt add comma (,) after the last element score col as it will generate an error
-- as sql expects col after the , so dont put comma , after the last col 