USE sakila;

SELECT * FROM Film_test;
SELECT * FROM Category_test;

-- Inner Join
SELECT f.*, c.Name FROM Film_test f
INNER JOIN Category_test c 
ON f.Category_ID = c.Category_ID

-- Left Join
SELECT f.*, c.Name FROM Film_test f
LEFT JOIN Category_test c 
ON f.Category_ID = c.Category_ID

-- Right Join
SELECT f.*, c.Name FROM Film_test f
RIGHT JOIN Category_test c 
ON f.Category_ID = c.Category_ID

-- Union
SELECT f.*, c.Name FROM Film_test f
LEFT JOIN Category_test c 
ON f.Category_ID = c.Category_ID
UNION
SELECT f.*, c.Name FROM Category_test c 
LEFT JOIN Film_test f
ON f.Category_ID = c.Category_ID


