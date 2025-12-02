-- change the score of customer with ID 10 to value 0  and also update the country name to UK

-- the user number 10 - it has neither country nor Score - that is both are NULL

-- For multiple changes in UDPATE you can use , and write col_name = value

UPDATE customers
SET score = 0,
	country = 'UK'
where id = 10

SELECT * from customers
where id = 10

