/*
FORMAT() - returns the or converts the format of the value from one form to another
	- It formats a date or time value

SYNTAX -->
FORMAT(value , format [,culture])



SQL task --> Format the 'CreationTime' column value in the sales.Orders


	1. To extract the day information - using 'dd' format for CreationTime

	--DAY--
	If we use the 'dd' specifier - we get the day - in 2 digits 
We get - 01, 05, 10 , etc….


	- When you add one more row of format - using 'ddd'
The result is different --> it gives the day name like Wednesday as 'Wed' , Sunday as 'Sun' etc


     --MONTH--

		· Same with months - use 'MM' , "MMM", 'MMMM'

 - you will get the same result as - for the day 
For  
MM - 01(2 digit number)
MMM - jan (abbrevation of the month) 
MMMM - january ( full_name of month)




SQL task--> Convert the whole date part creation time - into US format - from Standard format

Standard format - YYYY-MM-DD

USA format --> MM-DD-YYYY


SQL task - Convert the standard time format to Europe format

Europe format -> dd-mm-yyyy




*/
SELECT
OrderID,
CreationTime,
FORMAT(CreationTime, 'MM-dd-yyyy') USA_Format,
FORMAT(CreationTime, 'dd-MM-yyyy') Europe_format, 
FORMAT(CreationTime, 'dd') dd,
FORMAT(CreationTime, 'ddd') ddd,
FORMAT(CreationTime, 'dddd') dddd,
FORMAT(CreationTime, 'MM') MM,
FORMAT(CreationTime, 'MMM') MMM,
FORMAT(CreationTime, 'MMMM') MMMM
From Sales.Orders

