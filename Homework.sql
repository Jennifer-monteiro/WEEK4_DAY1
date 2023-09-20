--homework
--How many actors are there with the last name ‘Wahlberg’?
SELECT last_name
FROM actor 
WHERE last_name = 'Wahlberg';

--Answer equals 2

--How many payments were made between $3.99 and $5.99?

SELECT count(payment_id)
FROM payment
WHERE amount BETWEEN 3.99 and 5.99;
--Answer is 2

--What film does the store have the most of? (search in inventory)

SELECT film_id,count(film_id)
FROM inventory
GROUP BY film_id
ORDER BY count desc 
--The answer is 8

--How many customers have the last name ‘William’?
SELECT last_name
FROM customer
WHERE last_name = 'William'

--The answer is no customers with that last name

--What store employee (get the id) sold the most rentals?
SELECT staff_id, count(staff_id)
FROM rental
GROUP BY staff_id
ORDER BY count desc

-- Answer is 1

--How many different district names are there?

SELECT count(distinct district)
FROM address

--answer is 378

--What film has the most actors in it? (use film_actor table and get film_id)
SELECT film_id, count(film_id)
FROM film_actor
GROUP BY film_id
ORDER BY count desc

--The answer is 508

-- how many customers have a last name ending with ‘es’? (use customer table)

SELECT last_name, count(last_name)
FROM customer
WHERE last_name LIKE '%es'
GROUP BY last_name

-- The answer is 21

--How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers
--with ids between 380 and 430? (use group by and having > 250)

SELECT customer_id, count(customer_id)
FROM payment
WHERE amount BETWEEN 4.99 and 5.99
AND customer_id BETWEEN 380 and 430
GROUP BY customer_id               
HAVING  > 250;                            



--Within the film table, how many rating categories are there? And what rating has the most
--movies total?

SELECT rating, count(rating)
FROM film 
GROUP BY rating
ORDER BY count desc

--The answer is 5