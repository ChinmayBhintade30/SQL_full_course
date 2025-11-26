-- Drop the column using drop command - which is the 3rd command in the DDL 

-- task - remove the column phone from the persons table


alter table persons
drop column phone 

select * FROM persons