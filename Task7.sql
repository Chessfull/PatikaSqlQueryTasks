-- 1. Group the films in the film table by their rating values.
SELECT rating, COUNT(*)
FROM film
GROUP BY rating;

-- 2. Find the replacement_cost values in the film table that have more than 50 films and display the corresponding film counts.
SELECT replacement_cost, COUNT(*)
FROM film
GROUP BY replacement_cost
HAVING COUNT(*)>50;

-- 3. List the number of customers for each store_id in the customer table.
SELECT store_id, COUNT(*)
FROM customer
GROUP BY store_id;

-- 4. Find the country_id in the city table that has the most cities, and display this country_id along with the number of cities.
SELECT country_id, COUNT(*)
FROM city
GROUP BY country_id
ORDER BY COUNT(*) desc
LIMIT 1;
