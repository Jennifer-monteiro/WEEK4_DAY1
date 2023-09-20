SELECT *
FROM actor;

SELECT first_name, last_name
FROM actor;


SELECT first_name, last_name
FROM actor
WHERE last_name = 'Wahlberg';


SELECT first_name, last_name
FROM actor
WHERE last_name LIKE 'W%';

SELECT first_name, last_name
FROM actor
WHERE last_name LIKE 'C___';

SELECT first_name, last_name
FROM actor
WHERE last_name LIKE 'C___%';


SELECT *
FROM payment;

-- find alçl payments greater than $5

SELECT customer_id
FROM payment
WHERE amount > 5;


SELECT customer_id, amount
FROM payment
WHERE amount > 5;

-- orderinf based on amount

SELECT customer_id, amount
FROM payment
WHERE amount > 5
ORDER BY amount DESC; -- ASC

-- conjunctions AND OR operators

SELECT customer_id, amount
FROM payment
WHERE amount > 5 AND amount < 100
ORDER BY amount DESC;

SELECT customer_id, amount
FROM payment
WHERE amount > 5 OR customer_id = 3 
ORDER BY amount DESC;

SELECT SUM(amount)
FROM payment
WHERE amount > 0;

SELECT AVG(amount)
FROM payment
WHERE amount > 0;

SELECT COUNT(amount)
FROM payment
WHERE amount > 0;

SELECT MIN(amount) as smallest_amount
FROM payment
WHERE amount > 0;

SELECT MAX(amount) as highest_amount
FROM payment
WHERE amount > 0;


--DISTINTC
-- UNIQUE VALUES. NO REPEAT
SELECT DISTINCT customer_id
FROM payment
WHERE amount > 5;

SELECT COUNT( DISTINCT customer_id)
FROM payment
WHERE amount > 5

--- GROUP BY

SELECT customer_id, SUM(amount)
FROM payment
WHERE amount > 0
GROUP BY customer_id
ORDER BY SUM(amount) DESC;

--HAVING CLAUSE
-- (ADDING A FILTER TO OUR AGGREGATE)
SELECT customer_id, SUM(amount)
FROM payment
WHERE amount > 0
GROUP BY customer_id
HAVING SUM(amount) > 100
ORDER BY SUM(amount) DESC;


SELECT customer_id, SUM(amount)
FROM payment
WHERE amount > 0
GROUP BY customer_id
HAVING SUM(amount) > 50
ORDER BY SUM(amount) DESC;
LIMIT 3


SELECT customer_id, SUM(amount)
FROM payment
WHERE amount > 0
GROUP BY customer_id
HAVING SUM(amount) > 50
ORDER BY SUM(amount) DESC;
LIMIT 3
OFFSET 1 --- pula de 1 em 1 ---



-- ACESS 2 TABLES // inventory

SELECT title
FROM film
WHERE film_id = 20;