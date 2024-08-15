-- 1. What is the average value of the rental_rate column in the film table?
SELECT ROUND(AVG(rental_rate),2)
FROM film;

-- 2. How many films in the film table start with the letter 'C'?
SELECT COUNT(*)
FROM film
WHERE title LIKE 'C%'

-- 3. What is the length (in minutes) of the longest film in the film table where the rental_rate is 0.99?
SELECT MAX(length)
FROM film
WHERE rental_rate=0.99;

-- 4. How many distinct replacement_cost values are there for films in the film table where the length is greater than 150 minutes?
SELECT COUNT(DISTINCT replacement_cost)
FROM film
WHERE length>150;
