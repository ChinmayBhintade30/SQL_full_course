-- add a new column called email to the persons table

alter table persons
add email varchar(50) not null

select * FROM persons