/*
SQL task -->
- detect the error in the string date value and - just show the standard format 
value in the output table and filter the date not in format



*/

SELECT 
	--CAST(OrderDate AS DATE) OrderDate
	OrderDate,
	ISDATE(OrderDate), -- returns 0 or 1 whether the Date is actual in date format or not
	CASE WHEN ISDATE(OrderDate) = 1 Then cast(OrderDate AS DATE)
	-- new column NewOrderDate --> cast as date type if ISDATE = 1 
		ELSE '9999-01-01'
	END NewOrderDate
	
-- sub query 

FROM
(
	Select '2025-08-20' As OrderDate UNION
	Select '2025-08-21' UNION
	Select '2025-08-23' UNION
	Select '2025-08'

)t 
Where ISDATE(OrderDate) = 0