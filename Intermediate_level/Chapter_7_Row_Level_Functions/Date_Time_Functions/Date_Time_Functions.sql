/*
Date - Time Function() --> 

it has 2 components - Date and Time

Date has 3 components - years, months, days
2025 - 08 -20

year of 4 digits - which has years

month - - indicates any month from the 12 months includes - 01 to 12

day--> last component - is date which can be between 01 to 30/31

Date - 11.55.49

-it has 3 components --> hours , minutes, seconds

  
hours - 0 to 23 hours - of 24 hours
minutes - it is between 0 to 59 - which is 60 minutes per hour

Sec - it represents - 0 to 59 seconds per minutes - 60 sec


It has heirarchy of the date- time functions
1.years
2.Months
3.Day
4.Hours
5.Minutes
6.seconds


*/

SELECT 
ORDERID,
OrderDate,
ShipDate,
CreationTime
from sales.Orders


-- retrieve the data from the columns like OrderDate , CreationTime , Shipdate



