/*
DATEDIFF() - calculates the difference between 2 dates
the difference can be in terms of any - part like years , months , days etc


DATEDIFF( part , start_date , end_date)

- start_date needs to be small 
- end_date needs to be large / old

part - is the part which difference is needed - years , months , days

SQl task - calculate the age of Employees

*/
Select 
EmployeeID,
BirthDate,
DATEDIFF(year, BirthDate , GETDATE()) as Age_of_Employee
from Sales.Employees