-- cool SQl techniques - static fixed values in the database

-- we can add data randomly by using select as any type of data - like 123 , "hello"

--select 123 as static_number;


--select 'hello' as static_string;
 -- everytime - the value in form of string in the cell or record must be in '' single qoutes


 select 
 id,
 first_name,
 'New customers' as Customer_type
 from customers
 

