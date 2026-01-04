/*
/Round () functions - rounds up or down the value to the nearest value

ROUND(value , no_of_decimal) -> returns the value till that decimal value and then 

return the value whether the value is >= 5 or < 5 it decides to get the next value or previous value


*/

SELECT
3.516,
ROUND(3.516,2) AS round_2,
ROUND(3.516,1) AS round_1,
ROUND(3.516,0) AS round_0	


