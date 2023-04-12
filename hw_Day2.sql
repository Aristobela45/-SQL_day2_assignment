-- 1. List all customers who live in Texas (use
-- JOINs)
SELECT customer_id
FROM customer
INNER JOIN city
ON customer.city_id = city.city_id
WHERE city = 'Texas';

-- 2. Get all payments above $6.99 with the Customer's Full
-- Name
SELECT first_name, last_name
FROM customer
WHERE customer_id IN (
	SELECT customer_id
	FROM payment
	GROUP BY customer_id
	HAVING SUM(amount) > 6.99
);

-- 3. Show all customers names who have made payments over $175(use
-- subqueries)
SELECT first_name, last_name
FROM customer
WHERE customer_id IN (
	SELECT customer_id
	FROM payment
	GROUP BY customer_id
	HAVING SUM(amount) > 175
);


-- 4. List all customers that live in Nepal (use the city
-- table)
SELECT first_name, last_name, address_id
FROM customer
WHERE address_id IN (
	SELECT address_id
	FROM address
	WHERE city_id IN (
		SELECT city_id
		FROM city
		WHERE city = 'Nepal'
	)
);

-- 5. Which staff member had the most
-- transactions?
SELECT staff_id, payment_id
FROM payment
WHERE payment_id

-- 6. How many movies of each rating are
-- there?
SELECT rating, film_id
FROM film


-- 7.Show all customers who have made a single payment
-- above $6.99 (Use Subqueries)
SELECT first_name, last_name
FROM customer
WHERE customer_id IN (
	SELECT customer_id
	FROM payment
	GROUP BY customer_id
	HAVING SUM(amount) > 6.99
);

-- 8.How many free rentals did our store give away?
SELECT rental_id
FROM payment
WHERE 
