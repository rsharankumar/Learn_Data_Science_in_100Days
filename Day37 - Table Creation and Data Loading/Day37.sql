#Day 2:

CREATE DATABASE Learn_SQL;

DROP DATABASE Learn_SQL;

CREATE TABLE Customers (
    CustomerID int,
    Name varchar(100),
    Address varchar(255),
    City varchar(100)
);

INSERT INTO Customers (CustomerID, Name, Address, City)
VALUES (100001, 'Mike', 'Elmo Road', 'Melbourne'),
	   (100002, 'Steve', 'Elmo Road', 'Melbourne'),
       (100003, 'Ram', 'Elmo Road', 'Melbourne'),
       (100004, 'Adbul', 'Elmo Road', 'Melbourne');

SELECT * FROM Customers;

UPDATE Customers
SET Name = 'Michael'
WHERE CustomerID=100001; 


DELETE FROM Customers WHERE CustomerID=100001; 

TRUNCATE TABLE Customers;

Drop table Customers;

-- Loading data using the Import Option
USE learn_sql;
SELECT * FROM netflix_titles;
SELECT COUNT(*) FROM netflix_titles;

-- Create a copy
CREATE TABLE netflix_titles_new
select * from netflix_titles;

-- Bulk Loading

-- Clear the records
Truncate table netflix_titles_new;

select * from netflix_titles_new;

# First copy file to the location of your DB
# C:\ProgramData\MySQL\MySQL Server 8.0\Data\learn_sql
LOAD DATA INFILE 'netflix_titles.csv' 
INTO TABLE netflix_titles_new CHARACTER SET latin1  FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' LINES TERMINATED BY '\r\n' 
IGNORE 1 LINES;

