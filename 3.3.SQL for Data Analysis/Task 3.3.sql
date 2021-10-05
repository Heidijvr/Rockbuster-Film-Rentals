/* Question 1.3 */

SELECT category_id, name
FROM category

/* Question 2.1 */

INSERT INTO category(name) 
VALUES ('Thriller')
INSERT INTO category(name) 
VALUES ('Crime')
INSERT INTO category(name) 
VALUES ('Mystery')
INSERT INTO category(name) 
VALUES ('Romance')
INSERT INTO category(name) 
VALUES ('War');

/* Question 3.1 */

SELECT film_id
FROM film
WHERE title = 'African Egg';

SELECT category_id 
FROM film_category
WHERE film_id = 5;

SELECT *
FROM category
WHERE category_id = 5

/* Question 3.2 */

UPDATE film_category
SET category_id = 8
WHERE film_id = 5

/* Question 4 */

DELETE from category
WHERE name = 'Mystery'
