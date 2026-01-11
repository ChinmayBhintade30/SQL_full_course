/*
Validation functions of date time functions
ISDATE() - returns or checks the string value is date or not
returns 1 if it is date
returns 0 if it is not date
*/

SELECT
ISDATE('123') DateCheck1,
ISDATE('2025-08-20') DateCheck2,
-- if we change the format 

ISDATE('20-08-2025') DateCheck3,
-- it will return '0' because - SQL does not recognizes format
ISDATE('2025') DateCheck4,
ISDATE('08') DateCheck5