-- Explore the DB
-- Min and Max
-- Avg, and Sum 
-- DISTINCT
-- Filter 
-- LIKE
-- SORTING
-- Between
-- GROUP BY
-- GROUP BY WITH HAVING
use sakila;

-- Explore the DB
SELECT * FROM ACTOR;
SELECT * FROM ADDRESS;
SELECT * FROM CITY;
SELECT * FROM FILM;
SELECT * FROM FILM_ACTOR;
SELECT * FROM RENTAL;
SELECT * FROM PAYMENT;


SELECT * FROM Actor LIMIT 10;
-- Min and Max
SELECT MIN(replacement_cost), MAX(replacement_cost) FROM FILM;

-- Avg, and Sum 
SELECT SUM(replacement_cost), AVG(rental_duration) FROM FILM;

-- DISTINCT
SELECT Distinct rating, rental_duration FROM FILM
ORDER BY rating

-- Filter 
SELECT * FROM FILM
WHERE Replacement_cost > 25
AND Rental_rate < 1;

-- LIKE
SELECT * FROM FILM
WHERE description LIKE '%Action%';

-- SORTING
SELECT * FROM FILM
WHERE description LIKE '%Action%'
ORDER BY rental_rate desc;

-- Between
SELECT * FROM FILM
WHERE rental_duration between 4 AND 7;


-- GROUP BY
SELECT customer_id, COUNT(*)
FROM PAYMENT
GROUP BY customer_id;

SELECT customer_id, SUM(Amount)
FROM PAYMENT
GROUP BY customer_id
ORDER BY SUM(Amount);

-- WITH HAVING
SELECT customer_id, SUM(Amount)
FROM PAYMENT
GROUP BY customer_id
HAVING SUM(Amount) > 200;

