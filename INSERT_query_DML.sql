-- task - write a insert query - where you will insert some values in customers table - id , country , first_name and score
--mention values after 5 as we have 5 entries already in the table


INSERT into customers(id, first_name , country , score)
values 
	(6,'Anna','USA',NULL),
	(7, 'SAM' , NULL , 100)

select * from customers