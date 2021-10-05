/* Question 1 */
SELECT *
FROM film;

EXPLAIN 
SELECT *
FROM film;

/* Question 1.1 */

SELECT film_id, title
FROM film;

EXPLAIN
SELECT film_id, title
FROM film;

/* Question 1.2 */

EXPLAIN SELECT film_id, title
FROM film
ORDER BY title ASC
LIMIT 10;
 
/* Question 2.1 */

SELECT title,
	release_year,
	rental_rate
FROM film
ORDER BY title ASC, release_year DESC, rental_rate DESC

/* Question 3.1 */

SELECT
	rating, avg(rental_rate)
FROM film
GROUP BY rating

/* Question 3.2 */

SELECT 
	rating, MIN(rental_rate), 
            MAX(rental_rate)
FROM film
GROUP BY rating

