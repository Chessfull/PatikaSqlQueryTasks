-- 1. Counting Films with Length Greater Than Average:
SELECT COUNT(*)
FROM film
WHERE length >
(
SELECT AVG(length)
FROM film
);

-- 2. Counting Films with the Highest Rental Rate:
SELECT COUNT(*)
FROM film
WHERE rental_rate =
(
SELECT MAX(rental_rate)
FROM film
);

-- 3. Listing Films with the Lowest Rental Rate and Lowest Replacement Cost:
SELECT title, rental_rate
FROM film
WHERE rental_rate = ANY
(
SELECT MAX(rental_rate) FROM film
UNION
SELECT MIN(rental_rate) FROM film
)
ORDER BY rental_rate DESC;

-- 4. Listing Customers with the Most Payments:
SELECT customer_id, COUNT(*) AS Shopping_Count
FROM payment
GROUP BY customer_id
ORDER BY Shopping_Count DESC;