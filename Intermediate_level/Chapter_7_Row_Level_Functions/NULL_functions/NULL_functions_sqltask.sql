/*
find average scores of the customers
ISNULL ()
COEALSCE() 
- both functions are use to validate the whether the NULL value is present or not
- replaces any static value or replaces by some other column value
 -- to take the avg of the COALESCE values of the Column Score u
*/
select
CustomerID,
Score,
COALESCE(Score, 0) as Score2,
AVG(Score) over () AvgScores,
AVG(COALESCE(Score , 0)) over () AvgScores2
-- COALESCE(Score, 0) - checks for the any NULL value present in the column 
-- if there is NULL value , it is replaced by  the value - 0 

-- so the average now becomes - (350+900+750+500+0)/5 = 500
from sales.Customers
