-- insert data from customers to persons using 2nd method

-- step 1 - apply select and where condition - to filter the data and 
-- step 2 - insert that result after the filtering to new target table
create table persons(
	id INT not null,
	person_name varchar(50) not null,
	birth_date date ,
	phone varchar(15) not null
	);


INSERT into persons (id,person_name,birth_date,phone)

SELECT 
id , 
first_name,
NULL,
'Unknown'
from customers;
