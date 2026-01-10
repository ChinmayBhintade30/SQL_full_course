/*
DATEADD() - returns the value - that is either adds or subtracts the parts of the date like
year , month , day , etc 

Syntax -->

DATEADD(part_of_date, interval, date(field_name))

For eg 
DATEADD(year , 2, date)

DATEADD(month . -4, date)

*/








SELECT
OrderID,
OrderDate,
DATEADD(year, 2,OrderDate) as Twoyears_later,
-- adds 2 years in the current year of the OrderDate

DATEADD(month, 3 , OrderDate) as Threemonths_later,
-- adding  3 months to the current month of the OrderDate

DATEADD(day, -10, OrderDate) as tendays_before
-- subtracting 10 days from the current date of the OrderDate

From sales.Orders