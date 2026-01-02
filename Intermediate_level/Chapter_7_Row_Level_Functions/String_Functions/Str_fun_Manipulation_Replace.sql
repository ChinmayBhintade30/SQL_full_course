/*
Replace() - replaces old value with a new value
replaces specific character with a new character in that string

- can repalce as well as remove any character and can have nothing / blank space 
SQL task -remove the character '-' from the phone number

as we want to remove the '-' --> replace it with - ''



*/

SELECT 
'123-456-7890'as phone,
REPLACE('123-456-7890','-','/') as clean_phone
 