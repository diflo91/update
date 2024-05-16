CREATE DATABASE challenge;
GO

CREATE TABLE customers (
    id int PRIMARY key IDENTITY(1,1),
	name varchar(20) NOT NULL,
	)
	
	GO

INSERT INTO customers (name) VALUES ('Momoz'),('Popoz');
   
    GO 
	
BEGIN TRANSACTION;

UPDATE customers SET name = LEFT(name, LEN(name) - 1) WHERE name LIKE '%z%';

SELECT * FROM customers;

COMMIT TRANSACTION;