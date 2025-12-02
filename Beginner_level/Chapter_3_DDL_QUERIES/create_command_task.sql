-- create command is used to create an empty table in the database

-- create command is DDl query - data definition query - which is used to create a table in database--> with col names and empty values


-- to create new table called persons with columns : id, person_name , birthdate , and  phone

CREATE TABLE  persons(
	id INT NOT NULl,
	person_name VARCHAR(50) NOT NULL,
	brith_date DATE,
	phone varchar(15) NOT NULL,
	constraint pk_persons primary key (id)
)	

