--Inner JOIN on the actor and film_actor table
SELECT actor.actor_id, first_name, last_name, film_id
FROM film_actor
INNER JOIN actor
ON actor.actor_id = film_actor.actor_id;

--INNER JOIN on the actor, film_actor, and film table to see which actors are in what film
SELECT first_name, last_name, title -- selecting columns from tables
FROM actor-- table A
INNER JOIN film_actor --table B
ON actor.actor_id = film_actor.actor_id
INNER JOIN film --table C
ON film_actor.film_id = film.film_id;

--join that will produce info about a customer
--from the country of Angola
--frist name, last name, email, country

SELECT first_name, last_name, email, country
FROM customer
INNER JOIN address
ON customer.address_id = address.address_id
INNER JOIN city
ON address.city_id = city.city_id
INNER JOIN country
ON city.country_id = country.country_id
WHERE country = 'Angola';


