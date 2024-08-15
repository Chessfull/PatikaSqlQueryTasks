-- ▼ TASK 1 ▼
-- Select title and description columns from the film table and order by title.
SELECT title, description
FROM film
ORDER BY title;

-- Select all columns from the film table where length is greater than 60 and less than 75.
SELECT *
FROM film
WHERE length>60 AND length<75;

-- Select all columns from the film table where rental_rate is 0.99 and replacement_cost is either 12.99 or 28.99.
SELECT *
FROM film
WHERE rental_rate=0.99 AND replacement_cost=12.99 OR replacement_cost=28.99;

-- Find the last_name of the customer whose first_name is 'Mary'
SELECT last_name
FROM customer
WHERE first_name='Mary'; --Smith


-- Select all columns from the film table where length is not greater than 50 and rental_rate is neither 2.99 nor 4.99.
SELECT * 
FROM film
WHERE length<=50 AND (rental_rate != 2.99 OR rental_rate != 4.99)

-- ▼ TASK 2 ▼
-- Select all columns from the film table where replacement_cost is between 12.99 and 16.99.
SELECT *
FROM film
WHERE replacement_cost BETWEEN 12.99 AND 16.99;

-- Select first_name and last_name from the actor table where first_name is either 'Penelope', 'Nick', or 'Ed'.
SELECT first_name, last_name
FROM actor
WHERE first_name IN ('Penelope','Nick','Ed');


-- Select all columns from the film table where rental_rate is either 0.99, 2.99, or 4.99 and replacement_cost is either 12.99, 15.99, or 28.99.
SELECT *
FROM film
WHERE rental_rate IN (0.99,2.99) AND replacement_cost IN (12.99,15.99,28.99);

-- ▼ TASK 3 ▼
-- 1. Select all columns from the country table where the country column starts with 'A' and ends with 'a'.
SELECT *
FROM country
WHERE country LIKE 'A%a';

-- 2. Select all columns from the country table where the country column has at least 6 characters and ends with 'n'.
SELECT *
FROM country
WHERE country LIKE '_____%n';

-- 3. Select all columns from the film table where the title column contains at least one 'T', case-insensitive.
SELECT *
FROM film
WHERE title ~~* '%T%';

-- 4. Select all columns from the film table where title starts with 'C', length is greater than 90, and rental_rate is 2.99.
SELECT *
FROM film
WHERE title LIKE 'C%' AND length>90 AND rental_rate=2.99;

-- ▼ TASK 4 ▼
-- 1. Select distinct values from the replacement_cost column in the film table and order them.
SELECT DISTINCT replacement_cost
FROM film
ORDER BY replacement_cost;

-- 2. Count the number of distinct values in the replacement_cost column in the film table.
SELECT COUNT(DISTINCT replacement_cost)
FROM film;

-- 3. Count the number of films where the title starts with 'T' and the rating is 'G'.
SELECT COUNT(*)
FROM film
WHERE title LIKE 'T%' AND rating='G';

-- 4. Count the number of country names that are exactly 5 characters long in the country table.
SELECT COUNT(*)
FROM country
WHERE country LIKE '_____';

-- 5. Count the number of city names that end with 'R' or 'r' in the city table.
SELECT COUNT(*)
from city
WHERE city ~~* '%R';

